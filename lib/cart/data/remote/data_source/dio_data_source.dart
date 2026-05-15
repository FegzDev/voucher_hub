import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/cart/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/cart/data/remote/request/add_cart_item_request.dart';
import 'package:voucher_hub/cart/data/remote/request/update_cart_item_request.dart';
import 'package:voucher_hub/cart/data/remote/response/cart_response.dart';
import 'package:voucher_hub/cart/data/remote/response/cart_total_response.dart';
import 'package:voucher_hub/cart/data/remote/response/checkout_response.dart';
import 'package:voucher_hub/cart/data/remote/util/api_defaults.dart';
import 'package:voucher_hub/error_handling/data/remote/response/error_response.dart';
import 'package:voucher_hub/network/error_handling/dio.dart';
import 'package:voucher_hub/network/extension/http_status.dart';

final class DioCartDataSource implements RemoteCartDataSource {
  final Dio _dio;

  DioCartDataSource(this._dio);

  @override
  Future<Either<ErrorResponse, CartResponse>> getCart() async {
    final result = await _dio.safeGet(CartApiDefaults.cartUrl);

    return result.fold(
      (exception) {
        return Either.left(exception.toResponse());
      },
      (response) {
        if (response.statusCode?.isSuccess() != true) {
          return Either.left(ErrorResponse.fromJson(response.data));
        }

        return Either.right(CartResponse.fromJson(response.data));
      },
    );
  }

  @override
  Future<Either<ErrorResponse, CartResponse>> addCartItem({
    required String productCode,
    required double amount,
    required int quantity,
  }) async {
    final request = AddCartItemRequest(
      productCode: productCode,
      amount: amount,
      quantity: quantity,
    );

    final result = await _dio.safePost(
      CartApiDefaults.cartItemsUrl,
      data: request.toJson(),
    );

    return result.fold(
      (exception) {
        return Either.left(exception.toResponse());
      },
      (response) {
        if (response.statusCode?.isSuccess() != true) {
          return Either.left(ErrorResponse.fromJson(response.data));
        }

        return Either.right(CartResponse.fromJson(response.data));
      },
    );
  }

  @override
  Future<Either<ErrorResponse, CartResponse>> updateCartItem({
    required int id,
    required double amount,
    required int quantity,
  }) async {
    final request = UpdateCartItemRequest(
      cartItemId: id,
      amount: amount,
      quantity: quantity,
    );

    final result = await _dio.safePut(
      CartApiDefaults.getCartItemUrl(id),
      data: request.toJson(),
    );

    return result.fold(
      (exception) {
        return Either.left(exception.toResponse());
      },
      (response) {
        if (response.statusCode?.isSuccess() != true) {
          return Either.left(ErrorResponse.fromJson(response.data));
        }

        return Either.right(CartResponse.fromJson(response.data));
      },
    );
  }

  @override
  Future<Either<ErrorResponse, CartResponse>> removeCartItem(int id) async {
    final result = await _dio.safeDelete(CartApiDefaults.getCartItemUrl(id));

    return result.fold(
      (exception) {
        return Either.left(exception.toResponse());
      },
      (response) {
        if (response.statusCode?.isSuccess() != true) {
          return Either.left(ErrorResponse.fromJson(response.data));
        }

        return Either.right(CartResponse.fromJson(response.data));
      },
    );
  }

  @override
  Future<Either<ErrorResponse, Unit>> clearCart() async {
    final result = await _dio.safeDelete(CartApiDefaults.cartUrl);

    return result.fold(
      (exception) {
        return Either.left(exception.toResponse());
      },
      (response) {
        if (response.statusCode?.isSuccess() != true) {
          return Either.left(ErrorResponse.fromJson(response.data));
        }

        return Either.right(unit);
      },
    );
  }

  @override
  Future<Either<ErrorResponse, CartTotalResponse>> calculateTotal() async {
    final result = await _dio.safeGet(CartApiDefaults.cartTotalUrl);

    return result.fold(
      (exception) {
        return Either.left(exception.toResponse());
      },
      (response) {
        if (response.statusCode?.isSuccess() != true) {
          return Either.left(ErrorResponse.fromJson(response.data));
        }

        return Either.right(CartTotalResponse.fromJson(response.data));
      },
    );
  }

  @override
  Future<Either<ErrorResponse, CheckoutResponse>> checkout() async {
    final result = await _dio.safePost(CartApiDefaults.checkoutUrl);

    return result.fold(
      (exception) {
        return Either.left(exception.toResponse());
      },
      (response) {
        if (response.statusCode?.isSuccess() != true) {
          return Either.left(ErrorResponse.fromJson(response.data));
        }

        return Either.right(CheckoutResponse.fromJson(response.data));
      },
    );
  }
}
