import 'package:voucher_hub/cart/data/remote/response/cart_total_response.dart';
import 'package:voucher_hub/cart/domain/model/cart_total.dart';

extension CartTotalResponseMapper on CartTotalResponse {
  CartTotal toDomain() {
    return CartTotal(
      subtotal: subtotal,
      fees: fees,
      total: total,
      currency: currency,
    );
  }
}
