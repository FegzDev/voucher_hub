import 'package:voucher_hub/auth/data/remote/response/login_response.dart';
import 'package:voucher_hub/auth/domain/model/login_data.dart';
import 'package:voucher_hub/user/data/remote/mapper/user_mapper.dart';

extension LoginResponseMapper on LoginResponse {
  LoginData toDomain() {
    return LoginData(
      token: accessToken,
      expiresAt: DateTime.parse(expiresAtUtc),
      user: user.toDomain(),
    );
  }
}
