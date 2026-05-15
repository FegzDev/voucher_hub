part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loading() = _Loading;
  const factory CartState.success(Cart cart) = _Success;
  const factory CartState.updating(Cart cart) = _Updating;
  const factory CartState.empty() = _Empty;
  const factory CartState.failure(ErrorData error) = _Failure;
  const factory CartState.cartItemFailure(Cart? cart, ErrorData error) = _CartItemFailure;
}
