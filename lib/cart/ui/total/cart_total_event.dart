part of 'cart_total_bloc.dart';

@freezed
class CartTotalEvent with _$CartTotalEvent {
  const factory CartTotalEvent.calculateTotal() = _CalculateTotal;

  const factory CartTotalEvent.refreshTotal() = _RefreshTotal;
}
