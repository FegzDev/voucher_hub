part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = _Initial;

  const factory CheckoutState.loading() = _Loading;

  const factory CheckoutState.success(Checkout checkout) = _Success;

  const factory CheckoutState.failure(ErrorData error) = _Failure;
}
