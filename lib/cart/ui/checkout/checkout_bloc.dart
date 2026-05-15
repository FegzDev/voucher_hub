import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/cart/domain/model/checkout.dart';
import 'package:voucher_hub/cart/domain/repository/cart_repository.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';

part 'checkout_bloc.freezed.dart';

part 'checkout_event.dart';

part 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final CartRepository _repository;

  CheckoutBloc(this._repository) : super(const CheckoutState.initial()) {
    on<_ConfirmCheckout>(_onConfirmCheckout);
  }

  Future<void> _onConfirmCheckout(
    _ConfirmCheckout _,
    Emitter<CheckoutState> emit,
  ) async {
    if (state is _Loading || state is _Success) return;

    emit(const CheckoutState.loading());

    final result = await _repository.checkout();

    result.fold(
      (error) => emit(CheckoutState.failure(error)),
      (checkout) => emit(CheckoutState.success(checkout)),
    );
  }
}
