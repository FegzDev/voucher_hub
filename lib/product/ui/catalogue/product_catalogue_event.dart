part of 'product_catalogue_bloc.dart';

@freezed
class ProductCatalogueEvent with _$ProductCatalogueEvent {
  const factory ProductCatalogueEvent.getProducts() = _GetProducts;
  const factory ProductCatalogueEvent.refreshProducts() = _RefreshProducts;
}
