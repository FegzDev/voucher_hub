import 'package:drift/drift.dart';

class StringListConverter extends TypeConverter<List<String>, String> {
  const StringListConverter();

  @override
  List<String> fromSql(String fromDb) {
    return fromDb.isEmpty ? [] : fromDb.split(',');
  }

  @override
  String toSql(List<String> value) => value.join(',');
}

class DoubleListConverter extends TypeConverter<List<double>, String> {
  const DoubleListConverter();

  @override
  List<double> fromSql(String fromDb) {
    return fromDb.isEmpty
        ? []
        : fromDb.split(',').map((value) => double.parse(value)).toList();
  }

  @override
  String toSql(List<double> value) => value.join(',');
}
