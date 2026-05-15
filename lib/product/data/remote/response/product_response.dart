import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';

part 'product_response.g.dart';

@Freezed(toJson: false)
abstract class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    required String code,
    required String name,
    required String imageUrl,
    required String description,
    required String currency,
    required double minValue,
    required double maxValue,
    required List<double> denominations,
    required List<String> redemptionDetails,
    required List<String> countries,
    required List<String> stores,
    required List<String> categories,
    required ProductValidityResponse validity,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@Freezed(toJson: false)
abstract class ProductValidityResponse with _$ProductValidityResponse {
  const factory ProductValidityResponse({
    required String type,
    required int value,
  }) = _ProductValidityResponse;

  factory ProductValidityResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductValidityResponseFromJson(json);
}
