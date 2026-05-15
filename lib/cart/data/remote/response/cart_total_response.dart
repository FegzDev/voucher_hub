import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_total_response.freezed.dart';

part 'cart_total_response.g.dart';

@Freezed(toJson: false)
abstract class CartTotalResponse with _$CartTotalResponse {
  const factory CartTotalResponse({
    required double subtotal,
    required double fees,
    required double total,
    required String currency,
  }) = _CartTotalResponse;

  factory CartTotalResponse.fromJson(Map<String, dynamic> json) =>
      _$CartTotalResponseFromJson(json);
}
