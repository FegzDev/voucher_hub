import 'package:get_it/get_it.dart';
import 'package:voucher_hub/auth/di/di.dart';
import 'package:voucher_hub/database/di.dart';
import 'package:voucher_hub/network/di/di.dart';
import 'package:voucher_hub/secure_storage/di.dart';
import 'package:voucher_hub/user/di/di.dart';

void configureDI(GetIt di) {
  configureSecureStorageDI(di);
  configureDatabaseDI(di);
  configureNetworkDI(di);
  configureUserDI(di);
  configureAuthDI(di);
}
