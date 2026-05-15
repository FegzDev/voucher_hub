import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/error_handling/data/remote/mapper/error_response.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/product/data/local/data_source/data_source.dart';
import 'package:voucher_hub/product/data/local/mappers/local_product.dart';
import 'package:voucher_hub/product/data/local/util/local_defaults.dart';
import 'package:voucher_hub/product/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/product/data/remote/mapper/product_response.dart';
import 'package:voucher_hub/product/domain/model/product.dart';
import 'package:voucher_hub/product/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final LocalProductDataSource _localDataSource;
  final RemoteProductDataSource _remoteDataSource;

  ProductRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<Either<ErrorData, List<Product>>> getProducts() async {
    final localProducts = await _localDataSource.getProducts();

    final areProductsValid =
        localProducts.isNotEmpty &&
        localProducts.all(
          (product) => product.expiresAt.isAfter(DateTime.timestamp()),
        );

    if (areProductsValid) {
      final products = localProducts
          .map((product) => product.toDomain())
          .toList();
      return Either.right(products);
    }

    await _localDataSource.deleteProducts();

    final remoteResult = await _remoteDataSource.getProducts();

    return remoteResult.bimap((error) => error.toDomain(), (response) {
      final createdAt = DateTime.timestamp();
      final expiresAt = DateTime.timestamp().add(LocalProductDefaults.validity);

      final localProducts = response
          .map((product) => product.toLocal(createdAt, expiresAt))
          .toList();

      _localDataSource.insertProducts(localProducts);

      return response.map((item) => item.toDomain()).toList();
    });
  }

  @override
  Future<Either<ErrorData, Product>> getProduct(String code) async {
    final localProduct = await _localDataSource.getProduct(code);

    final isProductValid =
        localProduct != null &&
        localProduct.expiresAt.isAfter(DateTime.timestamp());

    if (isProductValid) {
      return Either.right(localProduct.toDomain());
    }

    final remoteResult = await _remoteDataSource.getProduct(code);

    return remoteResult.bimap((error) => error.toDomain(), (product) {
      final createdAt = DateTime.timestamp();
      final expiresAt = DateTime.timestamp().add(LocalProductDefaults.validity);

      _localDataSource.insertProduct(product.toLocal(createdAt, expiresAt));

      return product.toDomain();
    });
  }
}
