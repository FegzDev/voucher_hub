import 'package:get_it/get_it.dart';
import 'package:voucher_hub/voucher/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/voucher/data/remote/data_source/dio_data_source.dart';
import 'package:voucher_hub/voucher/data/repository/voucher_repository_impl.dart';
import 'package:voucher_hub/voucher/domain/repository/voucher_repository.dart';
import 'package:voucher_hub/voucher/ui/list/voucher_list_bloc.dart';

void configureVoucherDI(GetIt di) {
  di
    ..registerFactory<RemoteVoucherDataSource>(() => DioVoucherDataSource(di()))
    ..registerFactory<VoucherRepository>(() => VoucherRepositoryImpl(di()))
    ..registerFactory(() => VoucherListBloc(di()));
}
