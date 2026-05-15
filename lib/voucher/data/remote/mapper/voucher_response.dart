import 'package:voucher_hub/voucher/data/remote/response/voucher_response.dart';
import 'package:voucher_hub/voucher/domain/model/voucher.dart';

extension VoucherResponseMapper on VoucherResponse {
  Voucher toDomain() {
    return Voucher(
      id: id,
      orderId: orderId,
      productCode: productCode,
      productName: productName,
      productImageUrl: productImageUrl,
      amount: amount,
      currency: currency,
      voucherCode: voucherCode,
      pin: pin,
      serialNumber: serialNumber,
      expiryDate: DateTime.parse(expiryDate),
      suregiftsVoucherId: suregiftsVoucherId,
      suregiftsOrderId: suregiftsOrderId,
      createdAtUtc: DateTime.parse(createdAtUtc),
    );
  }
}
