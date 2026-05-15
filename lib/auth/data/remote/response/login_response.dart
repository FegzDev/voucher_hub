import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/user/data/remote/response/user_response.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@Freezed(toJson: false)
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String accessToken,
    required String expiresAtUtc,
    required UserResponse user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
