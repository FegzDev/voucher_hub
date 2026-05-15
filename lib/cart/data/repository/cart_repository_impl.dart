import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/cart/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/cart/data/remote/mapper/cart_response.dart';
import 'package:voucher_hub/cart/data/remote/mapper/cart_total_response.dart';
import 'package:voucher_hub/cart/data/remote/mapper/checkout_response.dart';
import 'package:voucher_hub/cart/domain/model/cart.dart';
import 'package:voucher_hub/cart/domain/model/cart_total.dart';
import 'package:voucher_hub/cart/domain/model/checkout.dart';
import 'package:voucher_hub/cart/domain/repository/cart_repository.dart';
import 'package:voucher_hub/error_handling/data/remote/mapper/error_response.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';

final class CartRepositoryImpl implements CartRepository {
  final RemoteCartDataSource _dataSource;

  CartRepositoryImpl(this._dataSource);

  @override
  Future<Either<ErrorData, Cart>> getCart() {
    return _dataSource.getCart().then(
      (result) => result.bimap(
        (error) => error.toDomain(),
        (response) => response.toDomain(),
      ),
    );
  }

  @override
  Future<Either<ErrorData, Cart>> addCartItem({
    required String productCode,
    required double amount,
    required int quantity,
  }) {
    return _dataSource
        .addCartItem(
          productCode: productCode,
          amount: amount,
          quantity: quantity,
        )
        .then(
          (result) => result.bimap(
            (error) => error.toDomain(),
            (response) => response.toDomain(),
          ),
        );
  }

  @override
  Future<Either<ErrorData, Cart>> updateCartItem({
    required int id,
    required double amount,
    required int quantity,
  }) {
    return _dataSource
        .updateCartItem(id: id, amount: amount, quantity: quantity)
        .then(
          (result) => result.bimap(
            (error) => error.toDomain(),
            (response) => response.toDomain(),
          ),
        );
  }

  @override
  Future<Either<ErrorData, Cart>> removeCartItem(int id) {
    return _dataSource
        .removeCartItem(id)
        .then(
          (result) => result.bimap(
            (error) => error.toDomain(),
            (response) => response.toDomain(),
          ),
        );
  }

  @override
  Future<Either<ErrorData, Unit>> clearCart() {
    return _dataSource.clearCart().then(
      (result) => result.bimap((error) => error.toDomain(), (_) => unit),
    );
  }

  @override
  Future<Either<ErrorData, CartTotal>> calculateTotal() {
    return _dataSource.calculateTotal().then(
      (result) => result.bimap(
        (error) => error.toDomain(),
        (response) => response.toDomain(),
      ),
    );
  }

  @override
  Future<Either<ErrorData, Checkout>> checkout() {
    return _dataSource.checkout().then(
      (result) => result.bimap(
        (error) => error.toDomain(),
        (response) => response.toDomain(),
      ),
    );
  }
}
