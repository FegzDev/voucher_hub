import 'package:get_it/get_it.dart';
import 'package:voucher_hub/product/data/local/data_source/data_source.dart';
import 'package:voucher_hub/product/data/local/data_source/drift_data_source.dart';
import 'package:voucher_hub/product/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/product/data/remote/data_source/dio_data_source.dart';
import 'package:voucher_hub/product/data/repository/product_repository_impl.dart';
import 'package:voucher_hub/product/domain/repository/product_repository.dart';
import 'package:voucher_hub/product/ui/catalogue/product_catalogue_bloc.dart';

void configureProductDI(GetIt di) {
  di
    ..registerFactory<LocalProductDataSource>(
      () => DriftProductDataSource(di()),
    )
    ..registerFactory<RemoteProductDataSource>(() => DioProductDataSource(di()))
    ..registerFactory<ProductRepository>(
      () => ProductRepositoryImpl(di(), di()),
    )
    ..registerFactory(() => ProductCatalogueBloc(di()));
}
