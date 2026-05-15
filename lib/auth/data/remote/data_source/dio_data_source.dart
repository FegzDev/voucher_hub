import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/auth/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/auth/data/remote/request/login_request.dart';
import 'package:voucher_hub/auth/data/remote/response/login_response.dart';
import 'package:voucher_hub/auth/data/remote/util/api_defaults.dart';
import 'package:voucher_hub/error_handling/data/remote/response/error_response.dart';
import 'package:voucher_hub/network/error_handling/dio.dart';
import 'package:voucher_hub/network/extension/http_status.dart';

final class DioAuthDataSource implements RemoteAuthDataSource {
  final Dio _dio;

  DioAuthDataSource(this._dio);

  @override
  Future<Either<ErrorResponse, LoginResponse>> login({
    required String email,
    required String password,
  }) async {
    final request = LoginRequest(email: email, password: password);

    final result = await _dio.safePost(
      AuthApiDefaults.loginUrl,
      data: request.toJson(),
    );

    return result.fold(
      (exception) {
        return Either.left(exception.toResponse());
      },
      (response) {
        if (response.statusCode?.isSuccess() != true) {
          return Either.left(ErrorResponse.fromJson(response.data));
        }

        return Either.right(LoginResponse.fromJson(response.data));
      },
    );
  }
}
