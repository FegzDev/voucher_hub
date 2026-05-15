import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_cart_item_request.freezed.dart';

part 'add_cart_item_request.g.dart';

@Freezed(fromJson: false, toJson: true)
abstract class AddCartItemRequest with _$AddCartItemRequest {
  const factory AddCartItemRequest({
    required String productCode,
    required double amount,
    required int quantity,
  }) = _AddCartItemRequest;
}
