part of 'add_cart_item_bloc.dart';

@freezed
class AddCartItemState with _$AddCartItemState {
  const factory AddCartItemState.initial() = _Initial;

  const factory AddCartItemState.loading() = _Loading;

  const factory AddCartItemState.success(Cart cart) = _Success;

  const factory AddCartItemState.failure(ErrorData error) = _Failure;
}
