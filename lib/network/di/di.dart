import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
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

    return Dio(options);
  });
}
