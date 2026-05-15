import 'package:get_it/get_it.dart';
import 'package:voucher_hub/cart/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/cart/data/remote/data_source/dio_data_source.dart';
import 'package:voucher_hub/cart/data/repository/cart_repository_impl.dart';
import 'package:voucher_hub/cart/domain/repository/cart_repository.dart';
import 'package:voucher_hub/cart/ui/add_item/add_cart_item_bloc.dart';
import 'package:voucher_hub/cart/ui/cart/cart_bloc.dart';

void configureCartDI(GetIt di) {
  di
    ..registerFactory<RemoteCartDataSource>(() => DioCartDataSource(di()))
    ..registerFactory<CartRepository>(() => CartRepositoryImpl(di()))
    ..registerFactory(() => AddCartItemBloc(di()))
    ..registerFactory(() => CartBloc(di()));
}
