import 'package:voucher_hub/database/database.dart';
import 'package:voucher_hub/user/data/local/model/local_user.dart';

extension DriftUserMapper on User {
  LocalUser toLocal() {
    return LocalUser(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
    );
  }
}
