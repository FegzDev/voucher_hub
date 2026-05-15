import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_response.freezed.dart';
part 'voucher_response.g.dart';

@Freezed(toJson: false)
abstract class VoucherResponse with _$VoucherResponse {
  const factory VoucherResponse({
    required int id,
    required int orderId,
    required String productCode,
    required String productName,
    required String productImageUrl,
    required double amount,
    required String currency,
    required String voucherCode,
    required String pin,
    required String serialNumber,
    required String expiryDate,
    required String suregiftsVoucherId,
    required String suregiftsOrderId,
    required String createdAtUtc,
  }) = _VoucherResponse;

  factory VoucherResponse.fromJson(Map<String, dynamic> json) =>
      _$VoucherResponseFromJson(json);
}
