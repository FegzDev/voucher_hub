// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_total_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartTotalResponse _$CartTotalResponseFromJson(Map<String, dynamic> json) =>
    _CartTotalResponse(
      subtotal: (json['subtotal'] as num).toDouble(),
      fees: (json['fees'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      currency: json['currency'] as String,
    );
