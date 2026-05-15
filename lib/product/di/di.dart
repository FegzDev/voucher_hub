import 'package:get_it/get_it.dart';
import 'package:voucher_hub/product/data/local/data_source/data_source.dart';
import 'package:voucher_hub/product/data/local/data_source/drift_data_source.dart';

void configureProductDI(GetIt di) {
  di.registerFactory<LocalProductDataSource>(
    () => DriftProductDataSource(di()),
  );
}
