final class Voucher {
  final int id;
  final int orderId;
  final String productCode;
  final String productName;
  final String productImageUrl;
  final double amount;
  final String currency;
  final String voucherCode;
  final String pin;
  final String serialNumber;
  final DateTime expiryDate;
  final String suregiftsVoucherId;
  final String suregiftsOrderId;
  final DateTime createdAtUtc;

  Voucher({
    required this.id,
    required this.orderId,
    required this.productCode,
    required this.productName,
    required this.productImageUrl,
    required this.amount,
    required this.currency,
    required this.voucherCode,
    required this.pin,
    required this.serialNumber,
    required this.expiryDate,
    required this.suregiftsVoucherId,
    required this.suregiftsOrderId,
    required this.createdAtUtc,
  });
}
