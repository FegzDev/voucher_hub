import 'package:voucher_hub/cart/data/remote/response/checkout_response.dart';
import 'package:voucher_hub/cart/domain/model/checkout.dart';
import 'package:voucher_hub/voucher/data/remote/mapper/voucher_response.dart';

extension CheckoutResponseMapper on CheckoutResponse {
  Checkout toDomain() {
    return Checkout(
      orderId: orderId,
      paymentReference: paymentReference,
      status: status,
      totalAmount: totalAmount,
      currency: currency,
      suregiftsOrderId: suregiftsOrderId,
      failureReason: failureReason,
      vouchers: vouchers.map((voucher) => voucher.toDomain()).toList(),
    );
  }
}
