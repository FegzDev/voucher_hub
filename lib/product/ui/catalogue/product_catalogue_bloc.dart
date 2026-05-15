import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/product/domain/model/product.dart';
import 'package:voucher_hub/product/domain/repository/product_repository.dart';

part 'product_catalogue_bloc.freezed.dart';

part 'product_catalogue_event.dart';

part 'product_catalogue_state.dart';

class ProductCatalogueBloc
    extends Bloc<ProductCatalogueEvent, ProductCatalogueState> {
  final ProductRepository _repository;

  ProductCatalogueBloc(this._repository)
    : super(const ProductCatalogueState.initial()) {
    on<_GetProducts>(_getProducts);
    on<_RefreshProducts>(_refreshProducts);
    add(const ProductCatalogueEvent.getProducts());
  }

  Future<void> _getProducts(
    _GetProducts _,
    Emitter<ProductCatalogueState> emit,
  ) async {
    await _getProductsInternal(emit);
  }

  Future<void> _refreshProducts(
      _RefreshProducts _,
      Emitter<ProductCatalogueState> emit,
      ) async {
    await _getProductsInternal(emit);
  }

  Future<void> _getProductsInternal(Emitter<ProductCatalogueState> emit) async {
    if (state is _Loading) return;

    emit(const ProductCatalogueState.loading());

    final result = await _repository.getProducts();

    result.fold(
      (data) {
        emit(ProductCatalogueState.failure(data));
      },
      (products) {
        if (products.isEmpty) {
          emit(const ProductCatalogueState.empty());
        } else {
          emit(ProductCatalogueState.success(products));
        }
      },
    );
  }
}
