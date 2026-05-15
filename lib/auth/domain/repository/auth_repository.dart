import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/auth/domain/model/login_data.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';

abstract interface class AuthRepository {
  Stream<String?> getLocalAccessTokenStream();

  Future<String?> getLocalAccessToken();

  Future<Either<ErrorData, LoginData>> login({
    required String email,
    required String password,
  });

  Future<void> deleteLocalAccessToken();
}
