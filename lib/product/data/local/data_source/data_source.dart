import 'package:voucher_hub/product/data/local/model/local_product.dart';

abstract interface class LocalProductDataSource {
  Future<List<LocalProduct>> getProducts();

  Future<LocalProduct?> getProduct(String code);

  Future<void> insertProducts(List<LocalProduct> products);

  Future<void> insertProduct(LocalProduct product);

  Future<void> deleteProducts();
}
