import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/cart/domain/model/cart.dart';
import 'package:voucher_hub/cart/domain/repository/cart_repository.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';

part 'add_cart_item_event.dart';

part 'add_cart_item_state.dart';

part 'add_cart_item_bloc.freezed.dart';

class AddCartItemBloc extends Bloc<AddCartItemEvent, AddCartItemState> {
  final CartRepository _repository;

  AddCartItemBloc(this._repository) : super(const AddCartItemState.initial()) {
    on<_AddItem>(_onAddItem);
  }

  Future<void> _onAddItem(_AddItem event, Emitter<AddCartItemState> emit) async {
    if (state is _Loading) return;

    emit(const AddCartItemState.loading());

    final result = await _repository.addCartItem(
      productCode: event.productCode,
      amount: event.amount,
      quantity: event.quantity,
    );

    result.fold(
      (error) => emit(AddCartItemState.failure(error)),
      (cart) => emit(AddCartItemState.success(cart)),
    );
  }
}
