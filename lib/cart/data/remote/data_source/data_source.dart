import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/cart/data/remote/response/cart_response.dart';
import 'package:voucher_hub/cart/data/remote/response/cart_total_response.dart';
import 'package:voucher_hub/cart/data/remote/response/checkout_response.dart';
import 'package:voucher_hub/error_handling/data/remote/response/error_response.dart';

abstract interface class RemoteCartDataSource {
  Future<Either<ErrorResponse, CartResponse>> getCart();

  Future<Either<ErrorResponse, CartResponse>> addCartItem({
    required String productCode,
    required double amount,
    required int quantity,
  });

  Future<Either<ErrorResponse, CartResponse>> updateCartItem({
    required int id,
    required double amount,
    required int quantity,
  });

  Future<Either<ErrorResponse, CartResponse>> removeCartItem(int id);

  Future<Either<ErrorResponse, Unit>> clearCart();

  Future<Either<ErrorResponse, CartTotalResponse>> calculateTotal();

  Future<Either<ErrorResponse, CheckoutResponse>> checkout();
}
