// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    _ProductResponse(
      code: json['code'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
      currency: json['currency'] as String,
      minValue: (json['minValue'] as num).toDouble(),
      maxValue: (json['maxValue'] as num).toDouble(),
      denominations: (json['denominations'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      redemptionDetails: (json['redemptionDetails'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      countries: (json['countries'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      stores: (json['stores'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      validity: ProductValidityResponse.fromJson(
        json['validity'] as Map<String, dynamic>,
      ),
    );

_ProductValidityResponse _$ProductValidityResponseFromJson(
  Map<String, dynamic> json,
) => _ProductValidityResponse(
  type: json['type'] as String,
  value: (json['value'] as num).toInt(),
);
