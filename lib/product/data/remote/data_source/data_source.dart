import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/error_handling/data/remote/response/error_response.dart';
import 'package:voucher_hub/product/data/remote/response/product_response.dart';

abstract interface class RemoteProductDataSource {
  Future<Either<ErrorResponse, List<ProductResponse>>> getProducts();

  Future<Either<ErrorResponse, ProductResponse>> getProduct(String code);
}
