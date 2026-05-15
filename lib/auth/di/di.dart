import 'package:get_it/get_it.dart';
import 'package:voucher_hub/auth/data/local/data_source/data_source.dart';
import 'package:voucher_hub/auth/data/local/data_source/secure_storage_data_source.dart';
import 'package:voucher_hub/auth/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/auth/data/remote/data_source/dio_data_source.dart';

void configureAuthDI(GetIt di) {
  di
    ..registerFactory<LocalAuthDataSource>(
      () => SecureStorageAuthDataSource(di()),
    )
    ..registerFactory<RemoteAuthDataSource>(() => DioAuthDataSource(di()));
}
