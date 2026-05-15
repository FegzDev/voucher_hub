part of 'product_details_bloc.dart';

@freezed
class ProductDetailsEvent with _$ProductDetailsEvent {
  const factory ProductDetailsEvent.getProduct() = _GetProduct;

  const factory ProductDetailsEvent.refreshProduct() = _RefreshProduct;
}
