import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:voucher_hub/database/database_defaults.dart';
import 'package:voucher_hub/product/data/local/tables/products.dart';
import 'package:voucher_hub/user/data/local/tables/users.dart';

import 'converters.dart';

part 'database.g.dart';

@DriftDatabase(tables: [Users, Products])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => DatabaseDefaults.schemaVersion;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: DatabaseDefaults.databaseName,
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}
