import 'package:voucher_hub/user/data/local/data_source/data_source.dart';
import 'package:voucher_hub/user/data/local/mapper/local_user.dart';
import 'package:voucher_hub/user/domain/model/user.dart';
import 'package:voucher_hub/user/domain/repository/user_repository.dart';

final class UserRepositoryImpl implements UserRepository {
  final LocalUserDataSource _dataSource;

  UserRepositoryImpl(this._dataSource);

  @override
  Stream<User?> getLocalUserStream() {
    return _dataSource.getUserStream().map((user) => user?.toDomain());
  }

  @override
  Future<User?> getLocalUser() {
    return _dataSource.getUser().then((user) => user?.toDomain());
  }

  @override
  Future<void> insertLocalUser(User user) async {
    await _dataSource.insertUser(user.toLocal());
  }

  @override
  Future<void> deleteLocalUser() async {
    await _dataSource.deleteUsers();
  }
}
