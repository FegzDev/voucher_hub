import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/voucher/data/remote/response/voucher_response.dart';

part 'checkout_response.freezed.dart';

part 'checkout_response.g.dart';

@Freezed(toJson: false)
abstract class CheckoutResponse with _$CheckoutResponse {
  const factory CheckoutResponse({
    required int orderId,
    required String paymentReference,
    required String status,
    required double totalAmount,
    required String currency,
    required String suregiftsOrderId,
    required String? failureReason,
    required List<VoucherResponse> vouchers,
  }) = _CheckoutResponse;

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResponseFromJson(json);
}
