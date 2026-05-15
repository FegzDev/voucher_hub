import 'package:get_it/get_it.dart';
import 'package:voucher_hub/network/di/di.dart';
import 'package:voucher_hub/secure_storage/di.dart';

void configureDI(GetIt di) {
  configureSecureStorageDI(di);
  configureNetworkDI(di);
}
