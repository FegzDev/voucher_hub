final class CartApiDefaults {
  CartApiDefaults._();

  static const String cartUrl = 'cart';
  static const String cartItemsUrl = '$cartUrl/items';
  static const String cartTotalUrl = '$cartUrl/total';
  static const String checkoutUrl = 'checkout';

  static String getCartItemUrl(int id) => '$cartItemsUrl/$id';
}
