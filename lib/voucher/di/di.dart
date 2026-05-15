import 'package:get_it/get_it.dart';
import 'package:voucher_hub/voucher/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/voucher/data/remote/data_source/dio_data_source.dart';

void configureVoucherDI(GetIt di) {
  di.registerFactory<RemoteVoucherDataSource>(() => DioVoucherDataSource(di()));
}
