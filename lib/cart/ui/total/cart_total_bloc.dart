import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/cart/domain/model/cart_total.dart';
import 'package:voucher_hub/cart/domain/repository/cart_repository.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';

part 'cart_total_bloc.freezed.dart';

part 'cart_total_event.dart';

part 'cart_total_state.dart';

class CartTotalBloc extends Bloc<CartTotalEvent, CartTotalState> {
  final CartRepository _repository;

  CartTotalBloc(this._repository) : super(const CartTotalState.initial()) {
    on<_CalculateTotal>(_onCalculateTotal);
    on<_RefreshTotal>(_onRefreshTotal);

    add(const CartTotalEvent.calculateTotal());
  }

  Future<void> _onCalculateTotal(
    _CalculateTotal _,
    Emitter<CartTotalState> emit,
  ) async {
    await _calculateTotal(emit);
  }

  Future<void> _onRefreshTotal(
    _RefreshTotal _,
    Emitter<CartTotalState> emit,
  ) async {
    await _calculateTotal(emit);
  }

  Future<void> _calculateTotal(Emitter<CartTotalState> emit) async {
    if (state is _Loading) return;

    emit(const CartTotalState.loading());

    final result = await _repository.calculateTotal();

    result.fold(
      (error) => emit(CartTotalState.failure(error)),
      (total) => emit(CartTotalState.success(total)),
    );
  }
}
