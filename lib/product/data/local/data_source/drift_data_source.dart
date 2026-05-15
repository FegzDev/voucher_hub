import 'package:voucher_hub/database/database.dart';
import 'package:voucher_hub/product/data/local/data_source/data_source.dart';
import 'package:voucher_hub/product/data/local/mappers/drift_product.dart';
import 'package:voucher_hub/product/data/local/mappers/local_product.dart';
import 'package:voucher_hub/product/data/local/model/local_product.dart';

final class DriftProductDataSource implements LocalProductDataSource {
  final AppDatabase _database;

  DriftProductDataSource(this._database);

  @override
  Future<List<LocalProduct>> getProducts() {
    return _database.select(_database.products).get().then((products) {
      return products.map((products) => products.toLocal()).toList();
    });
  }

  @override
  Future<LocalProduct?> getProduct(String code) {
    final selectStatement = _database.select(_database.products)
      ..where((product) => product.code.equals(code))
      ..limit(1);

    return selectStatement.getSingleOrNull().then(
      (product) => product?.toLocal(),
    );
  }

  @override
  Future<void> insertProducts(List<LocalProduct> products) async {
    _database.batch((batch) {
      batch.insertAll(
        _database.products,
        products.map((product) => product.toCompanion()),
      );
    });
  }

  @override
  Future<void> insertProduct(LocalProduct product) async {
    _database
        .into(_database.products)
        .insertOnConflictUpdate(product.toCompanion());
  }

  @override
  Future<void> deleteProducts() async {
    _database.delete(_database.products).go();
  }
}
