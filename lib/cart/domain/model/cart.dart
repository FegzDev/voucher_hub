final class Cart {
  final int id;
  final List<CartItem> items;

  Cart({required this.id, required this.items});
}

final class CartItem {
  final int id;
  final String productCode;
  final String productName;
  final String productImageUrl;
  final double unitPrice;
  final String currency;
  final int quantity;
  final double subtotal;

  CartItem({
    required this.id,
    required this.productCode,
    required this.productName,
    required this.productImageUrl,
    required this.unitPrice,
    required this.currency,
    required this.quantity,
    required this.subtotal,
  });
}
