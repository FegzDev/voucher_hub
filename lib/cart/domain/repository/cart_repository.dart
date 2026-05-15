import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/cart/domain/model/cart.dart';
import 'package:voucher_hub/cart/domain/model/cart_total.dart';
import 'package:voucher_hub/cart/domain/model/checkout.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';

abstract interface class CartRepository {
  Future<Either<ErrorData, Cart>> getCart();

  Future<Either<ErrorData, Cart>> addCartItem({
    required String productCode,
    required double amount,
    required int quantity,
  });

  Future<Either<ErrorData, Cart>> updateCartItem({
    required int id,
    required double amount,
    required int quantity,
  });

  Future<Either<ErrorData, Cart>> removeCartItem(int id);

  Future<Either<ErrorData, Unit>> clearCart();

  Future<Either<ErrorData, CartTotal>> calculateTotal();

  Future<Either<ErrorData, Checkout>> checkout();
}
