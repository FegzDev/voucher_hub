import 'package:drift/drift.dart';

class Users extends Table {
  IntColumn get id => integer()();

  TextColumn get email => text()();

  TextColumn get firstName => text()();

  TextColumn get lastName => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
