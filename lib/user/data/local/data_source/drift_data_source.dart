import 'package:voucher_hub/database/database.dart';
import 'package:voucher_hub/user/data/local/data_source/data_source.dart';
import 'package:voucher_hub/user/data/local/mapper/drift_user.dart';
import 'package:voucher_hub/user/data/local/mapper/local_user.dart';
import 'package:voucher_hub/user/data/local/model/local_user.dart';

final class DriftUserDataSource implements LocalUserDataSource {
  final AppDatabase _database;

  DriftUserDataSource(this._database);

  @override
  Stream<LocalUser?> getUserStream() {
    final selectStatement = _database.select(_database.users)..limit(1);
    return selectStatement.watchSingleOrNull().map((user) => user?.toLocal());
  }

  @override
  Future<LocalUser?> getUser() {
    final selectStatement = _database.select(_database.users)..limit(1);
    return selectStatement.getSingleOrNull().then((user) => user?.toLocal());
  }

  @override
  Future<void> insertUser(LocalUser user) async {
    await _database
        .into(_database.users)
        .insertOnConflictUpdate(user.toCompanion());
  }

  @override
  Future<void> deleteUsers() async {
    await _database.delete(_database.users).go();
  }
}
