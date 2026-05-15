import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/product/domain/model/product.dart';

abstract interface class ProductRepository {
  Future<Either<ErrorData, List<Product>>> getProducts();

  Future<Either<ErrorData, Product>> getProduct(String code);
}
