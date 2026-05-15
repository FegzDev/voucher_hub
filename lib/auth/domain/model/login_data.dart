import 'package:voucher_hub/user/domain/model/user.dart';

final class LoginData {
  final String token;
  final DateTime expiresAt;
  final User user;

  LoginData({required this.token, required this.expiresAt, required this.user});
}
