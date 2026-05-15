import 'package:drift/drift.dart';
import 'package:voucher_hub/database/database.dart' hide User;
import 'package:voucher_hub/user/data/local/model/local_user.dart';
import 'package:voucher_hub/user/domain/model/user.dart';

extension LocalUserMapper on LocalUser {
  UsersCompanion toCompanion() {
    return UsersCompanion.insert(
      id: Value(id),
      email: email,
      firstName: firstName,
      lastName: lastName,
    );
  }

  User toDomain() {
    return User(id: id, email: email, firstName: firstName, lastName: lastName);
  }
}

extension UserMapper on User {
  LocalUser toLocal() {
    return LocalUser(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
    );
  }
}
