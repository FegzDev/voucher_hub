import 'package:voucher_hub/cart/data/remote/response/cart_response.dart';
import 'package:voucher_hub/cart/domain/model/cart.dart';

extension CartResponseMapper on CartResponse {
  Cart toDomain() {
    return Cart(
      id: cartId,
      items: items.map((item) => item.toDomain()).toList(),
    );
  }
}

extension _CartItemResponseMapper on CartItemResponse {
  CartItem toDomain() {
    return CartItem(
      id: id,
      productCode: productCode,
      productName: productName,
      productImageUrl: productImageUrl,
      unitPrice: unitPrice,
      currency: currency,
      quantity: quantity,
      subtotal: subtotal,
    );
  }
}
