import 'package:drift/drift.dart';
import 'package:voucher_hub/database/converters.dart';

class Products extends Table {
  TextColumn get code => text()();

  TextColumn get name => text()();

  TextColumn get imageUrl => text()();

  TextColumn get description => text()();

  TextColumn get currency => text()();

  RealColumn get minValue => real()();

  RealColumn get maxValue => real()();

  TextColumn get denominations => text().map(const DoubleListConverter())();

  TextColumn get redemptionDetails => text().map(const StringListConverter())();

  TextColumn get countries => text().map(const StringListConverter())();

  TextColumn get stores => text().map(const StringListConverter())();

  TextColumn get categories => text().map(const StringListConverter())();

  TextColumn get validityType => text()();

  IntColumn get validityValue => integer()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get expiresAt => dateTime()();

  @override
  Set<Column<Object>>? get primaryKey => {code};
}
