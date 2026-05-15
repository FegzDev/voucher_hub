import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/product/domain/model/product.dart';
import 'package:voucher_hub/product/domain/repository/product_repository.dart';

part 'product_details_event.dart';

part 'product_details_state.dart';

part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final String _code;
  final ProductRepository _repository;

  ProductDetailsBloc({
    required String code,
    required ProductRepository repository,
  }) : _code = code,
       _repository = repository,
       super(const ProductDetailsState.initial()) {
    on<_GetProduct>(_onGetProduct);
    on<_RefreshProduct>(_onRefreshProduct);
    add(const ProductDetailsEvent.getProduct());
  }

  Future<void> _onGetProduct(
    _GetProduct _,
    Emitter<ProductDetailsState> emit,
  ) async {
    await _getProduct(emit);
  }

  Future<void> _onRefreshProduct(
    _RefreshProduct _,
    Emitter<ProductDetailsState> emit,
  ) async {
    await _getProduct(emit);
  }

  Future<void> _getProduct(Emitter<ProductDetailsState> emit) async {
    if (state is _Loading) return;

    emit(const ProductDetailsState.loading());

    final result = await _repository.getProduct(_code);

    result.fold(
      (error) => emit(ProductDetailsState.failure(error)),
      (product) => emit(ProductDetailsState.success(product)),
    );
  }
}
