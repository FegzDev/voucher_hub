import 'package:get_it/get_it.dart';
import 'package:voucher_hub/user/data/local/data_source/data_source.dart';
import 'package:voucher_hub/user/data/local/data_source/drift_data_source.dart';
import 'package:voucher_hub/user/data/repository/user_repository_impl.dart';
import 'package:voucher_hub/user/domain/repository/user_repository.dart';

void configureUserDI(GetIt di) {
  di
    ..registerFactory<LocalUserDataSource>(() => DriftUserDataSource(di()))
    ..registerFactory<UserRepository>(() => UserRepositoryImpl(di()));
}
