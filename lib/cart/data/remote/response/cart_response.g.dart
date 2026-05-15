// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartResponse _$CartResponseFromJson(Map<String, dynamic> json) =>
    _CartResponse(
      cartId: (json['cartId'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_CartItemResponse _$CartItemResponseFromJson(Map<String, dynamic> json) =>
    _CartItemResponse(
      id: (json['id'] as num).toInt(),
      productCode: json['productCode'] as String,
      productName: json['productName'] as String,
      productImageUrl: json['productImageUrl'] as String,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      currency: json['currency'] as String,
      quantity: (json['quantity'] as num).toInt(),
      subtotal: (json['subtotal'] as num).toDouble(),
    );
