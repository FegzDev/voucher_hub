import 'package:get_it/get_it.dart';
import 'package:voucher_hub/cart/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/cart/data/remote/data_source/dio_data_source.dart';

void configureCartDI(GetIt di) {
  di.registerFactory<RemoteCartDataSource>(() => DioCartDataSource(di()));
}
