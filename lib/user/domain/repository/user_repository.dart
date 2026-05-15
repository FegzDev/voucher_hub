import 'package:voucher_hub/user/domain/model/user.dart';

abstract interface class UserRepository {
  Stream<User?> getLocalUserStream();

  Future<User?> getLocalUser();

  Future<void> insertLocalUser(User user);

  Future<void> deleteLocalUser();
}
