import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_cart_item_request.freezed.dart';

part 'update_cart_item_request.g.dart';

@Freezed(fromJson: false, toJson: true)
abstract class UpdateCartItemRequest with _$UpdateCartItemRequest {
  const factory UpdateCartItemRequest({
    required int cartItemId,
    required double amount,
    required int quantity,
  }) = _UpdateCartItemRequest;
}
