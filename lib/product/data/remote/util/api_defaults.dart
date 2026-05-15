final class ProductApiDefaults {
  ProductApiDefaults._();

  static const productsUrl = 'suregifts/products';
  static const String skipParamKey = 'skip';
  static const String limitParamKey = 'limit';
  static const int defaultSkipValue = 0;
  static const int defaultLimitValue = 500;

  static String getProductUrl(String code) => '$productsUrl/$code';
}
