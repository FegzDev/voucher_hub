part of 'add_cart_item_bloc.dart';

@freezed
abstract class AddCartItemEvent with _$AddCartItemEvent {
  const factory AddCartItemEvent.addItem({
    required String productCode,
    required double amount,
    required int quantity,
  }) = _AddItem;
}
