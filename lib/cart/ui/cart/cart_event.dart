part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getCart() = _GetCart;

  const factory CartEvent.refreshCart() = _RefreshCart;

  const factory CartEvent.clearCart() = _ClearCart;

  const factory CartEvent.updateItem({
    required int id,
    required double amount,
    required int quantity,
  }) = _UpdateItem;

  const factory CartEvent.removeItem(int id) = _RemoveItem;
}
