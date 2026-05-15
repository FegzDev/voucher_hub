// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckoutResponse _$CheckoutResponseFromJson(Map<String, dynamic> json) =>
    _CheckoutResponse(
      orderId: (json['orderId'] as num).toInt(),
      paymentReference: json['paymentReference'] as String,
      status: json['status'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      currency: json['currency'] as String,
      suregiftsOrderId: json['suregiftsOrderId'] as String,
      failureReason: json['failureReason'] as String?,
      vouchers: (json['vouchers'] as List<dynamic>)
          .map((e) => VoucherResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
