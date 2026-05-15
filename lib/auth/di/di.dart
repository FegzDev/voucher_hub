import 'package:get_it/get_it.dart';
import 'package:voucher_hub/auth/data/local/data_source/data_source.dart';
import 'package:voucher_hub/auth/data/local/data_source/secure_storage_data_source.dart';
import 'package:voucher_hub/auth/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/auth/data/remote/data_source/dio_data_source.dart';
import 'package:voucher_hub/auth/data/repository/auth_repository_impl.dart';
import 'package:voucher_hub/auth/domain/repository/auth_repository.dart';
import 'package:voucher_hub/auth/ui/bloc/auth_bloc.dart';
import 'package:voucher_hub/auth/ui/login/login_bloc.dart';

void configureAuthDI(GetIt di) {
  di
    ..registerFactory<LocalAuthDataSource>(
      () => SecureStorageAuthDataSource(di()),
    )
    ..registerFactory<RemoteAuthDataSource>(() => DioAuthDataSource(di()))
    ..registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(
        localDataSource: di(),
        remoteDataSource: di(),
        userRepository: di(),
      ),
    )
    ..registerFactory(
      () => AuthBloc(authRepository: di(), userRepository: di()),
    )
    ..registerFactory(() => LoginBloc(di()));
}
