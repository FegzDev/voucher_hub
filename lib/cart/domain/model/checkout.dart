import 'package:voucher_hub/voucher/domain/model/voucher.dart';

final class Checkout {
  final int orderId;
  final String paymentReference;
  final String status;
  final double totalAmount;
  final String currency;
  final String suregiftsOrderId;
  final String? failureReason;
  final List<Voucher> vouchers;

  Checkout({
    required this.orderId,
    required this.paymentReference,
    required this.status,
    required this.totalAmount,
    required this.currency,
    required this.suregiftsOrderId,
    required this.failureReason,
    required this.vouchers,
  });
}
