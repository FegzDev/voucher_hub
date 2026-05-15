import 'package:get_it/get_it.dart';
import 'package:voucher_hub/database/database.dart';

void configureDatabaseDI(GetIt di) {
  di.registerLazySingleton(() => AppDatabase());
}