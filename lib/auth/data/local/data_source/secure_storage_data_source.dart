import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:voucher_hub/auth/data/local/data_source/data_source.dart';
import 'package:voucher_hub/auth/data/local/util/local_defaults.dart';

final class SecureStorageAuthDataSource implements LocalAuthDataSource {
  final FlutterSecureStorage _storage;

  SecureStorageAuthDataSource(this._storage);

  @override
  Stream<String?> getAccessTokenStream() {
    late StreamController<String?> controller;

    void listener(String? token) {
      controller.add(token);
    }

    controller = StreamController<String?>.broadcast(
      onListen: () {
        _storage.registerListener(
          key: LocalAuthDefaults.accessTokenKey,
          listener: listener,
        );
      },
      onCancel: () {
        _storage.unregisterListener(
          key: LocalAuthDefaults.accessTokenKey,
          listener: listener,
        );
      },
    );

    return controller.stream;
  }

  @override
  Future<String?> getAccessToken() async {
    return await _storage.read(key: LocalAuthDefaults.accessTokenKey);
  }

  @override
  Future<void> insertAccessToken(String token) async {
    await _storage.write(key: LocalAuthDefaults.accessTokenKey, value: token);
  }

  @override
  Future<void> deleteAccessToken() async {
    await _storage.delete(key: LocalAuthDefaults.accessTokenKey);
  }
}
