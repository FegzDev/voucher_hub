import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:voucher_hub/auth/domain/repository/auth_repository.dart';
import 'package:voucher_hub/network/util/api_defaults.dart';

void configureNetworkDI(GetIt di) {
  di.registerLazySingleton(() {
    final options = BaseOptions(
      baseUrl: ApiDefaults.baseUrl,
      validateStatus: (_) => true,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      },
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    );

    final dio = Dio(options);

    final interceptor = InterceptorsWrapper(
      onRequest: (options, handler) async {
        AuthRepository repository = di();
        options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ${await repository.getLocalAccessToken()}';
        return handler.next(options);
      },
      onResponse: (response, handler) async {
        if (response.statusCode == HttpStatus.unauthorized) {
          AuthRepository authRepository = di();
          authRepository.deleteLocalAccessToken();
        }

        handler.next(response);
      },
    );

    dio.interceptors.add(interceptor);

    return dio;
  });
}
