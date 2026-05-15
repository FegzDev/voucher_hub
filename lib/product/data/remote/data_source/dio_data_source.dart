import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/error_handling/data/remote/response/error_response.dart';
import 'package:voucher_hub/network/error_handling/dio.dart';
import 'package:voucher_hub/network/extension/http_status.dart';
import 'package:voucher_hub/product/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/product/data/remote/response/product_response.dart';
import 'package:voucher_hub/product/data/remote/util/api_defaults.dart';

final class DioProductDataSource implements RemoteProductDataSource {
  final Dio _dio;

  DioProductDataSource(this._dio);

  @override
  Future<Either<ErrorResponse, List<ProductResponse>>> getProducts({
    int? skip,
    int? limit,
  }) async {
    final result = await _dio.safeGet(
      ProductApiDefaults.productsUrl,
      queryParameters: {
        ProductApiDefaults.skipParamKey: ProductApiDefaults.defaultSkipValue,
        ProductApiDefaults.limitParamKey: ProductApiDefaults.defaultLimitValue,
      },
    );

    return result.fold((exception) => Either.left(exception.toResponse()), (
      response,
    ) {
      if (response.statusCode?.isSuccess() != true) {
        return Either.left(ErrorResponse.fromJson(response.data));
      }

      final data = response.data as List<dynamic>;

      final responses = data.map((json) {
        return ProductResponse.fromJson(json as Map<String, dynamic>);
      }).toList();

      return Either.right(responses);
    });
  }

  @override
  Future<Either<ErrorResponse, ProductResponse>> getProduct(String code) async {
    final result = await _dio.safeGet(ProductApiDefaults.getProductUrl(code));

    return result.fold((exception) => Either.left(exception.toResponse()), (
      response,
    ) {
      if (response.statusCode?.isSuccess() != true) {
        return Either.left(ErrorResponse.fromJson(response.data));
      }

      return Either.right(ProductResponse.fromJson(response.data));
    });
  }
}
