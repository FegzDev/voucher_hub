part of 'product_catalogue_bloc.dart';

@freezed
class ProductCatalogueState with _$ProductCatalogueState {
  const factory ProductCatalogueState.initial() = _Initial;

  const factory ProductCatalogueState.loading() = _Loading;

  const factory ProductCatalogueState.success(List<Product> products) =
      _Success;

  const factory ProductCatalogueState.empty() = _Empty;

  const factory ProductCatalogueState.failure(ErrorData error) = _Failure;
}
