part of 'cart_total_bloc.dart';

@freezed
class CartTotalState with _$CartTotalState {
  const factory CartTotalState.initial() = _Initial;

  const factory CartTotalState.loading() = _Loading;

  const factory CartTotalState.success(CartTotal total) = _Success;

  const factory CartTotalState.failure(ErrorData error) = _Failure;
}
