import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/cart/domain/model/cart.dart';
import 'package:voucher_hub/cart/domain/repository/cart_repository.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';

part 'cart_bloc.freezed.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository _repository;

  CartBloc(this._repository) : super(const CartState.initial()) {
    on<_GetCart>(_onGetCart);
    on<_RefreshCart>(_onRefreshCart);
    on<_ClearCart>(_onClearCart);
    on<_UpdateItem>(_onUpdateItem);
    on<_RemoveItem>(_onRemoveItem);
  }

  Future<void> _onGetCart(_GetCart _, Emitter<CartState> emit) async {
    await _getCart(emit);
  }

  Future<void> _onRefreshCart(_RefreshCart _, Emitter<CartState> emit) async {
    await _getCart(emit);
  }

  Future<void> _onClearCart(_ClearCart _, Emitter<CartState> emit) async {
    emit(const CartState.empty());
  }

  Future<void> _getCart(Emitter<CartState> emit) async {
    if (state is _Loading) return;

    emit(const CartState.loading());

    final result = await _repository.getCart();

    result.fold(
      (data) {
        emit(CartState.failure(data));
      },
      (cart) {
        if (cart.items.isEmpty) {
          emit(const CartState.empty());
        } else {
          emit(CartState.success(cart));
        }
      },
    );
  }

  Future<void> _onUpdateItem(_UpdateItem event, Emitter<CartState> emit) async {
    final currentCart = state.mapOrNull(
      success: (state) => state.cart,
      updating: (state) => state.cart,
      cartItemFailure: (state) => state.cart,
    );

    if (currentCart == null) return;

    emit(CartState.updating(currentCart));

    final result = await _repository.updateCartItem(
      id: event.id,
      amount: event.amount,
      quantity: event.quantity,
    );

    result.fold(
      (error) {
        emit(CartState.cartItemFailure(currentCart, error));
      },
      (cart) {
        if (cart.items.isEmpty) {
          emit(const CartState.empty());
        } else {
          emit(CartState.success(cart));
        }
      },
    );
  }

  Future<void> _onRemoveItem(_RemoveItem event, Emitter<CartState> emit) async {
    final currentCart = state.mapOrNull(
      success: (state) => state.cart,
      updating: (state) => state.cart,
      cartItemFailure: (state) => state.cart,
    );

    if (currentCart == null) return;

    emit(CartState.updating(currentCart));

    final result = await _repository.removeCartItem(event.id);

    result.fold(
      (error) {
        emit(CartState.cartItemFailure(currentCart, error));
      },
      (cart) {
        if (cart.items.isEmpty) {
          emit(const CartState.empty());
        } else {
          emit(CartState.success(cart));
        }
      },
    );
  }
}
