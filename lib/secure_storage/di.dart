import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

void configureSecureStorageDI(GetIt di) {
  di.registerLazySingleton(() => const FlutterSecureStorage());
}