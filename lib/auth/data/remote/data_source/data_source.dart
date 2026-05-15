import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/auth/data/remote/response/login_response.dart';
import 'package:voucher_hub/error_handling/data/remote/response/error_response.dart';

abstract interface class RemoteAuthDataSource {
  Future<Either<ErrorResponse, LoginResponse>> login({
    required String email,
    required String password,
  });
}
