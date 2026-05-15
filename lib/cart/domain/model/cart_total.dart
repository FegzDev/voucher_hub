final class CartTotal {
  final double subtotal;
  final double fees;
  final double total;
  final String currency;

  CartTotal({
    required this.subtotal,
    required this.fees,
    required this.total,
    required this.currency,
  });
}
