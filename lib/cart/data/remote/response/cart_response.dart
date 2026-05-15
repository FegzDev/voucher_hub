import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_response.freezed.dart';

part 'cart_response.g.dart';

@Freezed(toJson: false)
abstract class CartResponse with _$CartResponse {
  const factory CartResponse({
    required int cartId,
    required List<CartItemResponse> items,
  }) = _CartResponse;

  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);
}

@Freezed(toJson: false)
abstract class CartItemResponse with _$CartItemResponse {
  const factory CartItemResponse({
    required int id,
    required String productCode,
    required String productName,
    required String productImageUrl,
    required double unitPrice,
    required String currency,
    required int quantity,
    required double subtotal,
  }) = _CartItemResponse;

  factory CartItemResponse.fromJson(Map<String, dynamic> json) =>
      _$CartItemResponseFromJson(json);
}
