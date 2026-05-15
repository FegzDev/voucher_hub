// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VoucherResponse _$VoucherResponseFromJson(Map<String, dynamic> json) =>
    _VoucherResponse(
      id: (json['id'] as num).toInt(),
      orderId: (json['orderId'] as num).toInt(),
      productCode: json['productCode'] as String,
      productName: json['productName'] as String,
      productImageUrl: json['productImageUrl'] as String,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      voucherCode: json['voucherCode'] as String,
      pin: json['pin'] as String,
      serialNumber: json['serialNumber'] as String,
      expiryDate: json['expiryDate'] as String,
      suregiftsVoucherId: json['suregiftsVoucherId'] as String,
      suregiftsOrderId: json['suregiftsOrderId'] as String,
      createdAtUtc: json['createdAtUtc'] as String,
    );
