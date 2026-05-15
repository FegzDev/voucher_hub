part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;

  const factory ProductDetailsState.loading() = _Loading;

  const factory ProductDetailsState.success(Product product) = _Success;

  const factory ProductDetailsState.failure(ErrorData error) = _Failure;
}
