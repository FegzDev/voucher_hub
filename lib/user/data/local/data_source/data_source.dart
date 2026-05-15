import 'package:voucher_hub/user/data/local/model/local_user.dart';

abstract interface class LocalUserDataSource {
  Stream<LocalUser?> getUserStream();

  Future<LocalUser?> getUser();

  Future<void> insertUser(LocalUser user);

  Future<void> deleteUsers();
}
