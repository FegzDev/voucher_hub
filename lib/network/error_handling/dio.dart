import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/error_handling/data/remote/response/error_response.dart';

extension DioErrorHandling on Dio {
  Future<Either<DioException, Response<T>>> safeGet<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await get<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      return Either.right(response);
    } on DioException catch (exception) {
      return Either.left(exception);
    }
  }

  Future<Either<DioException, Response<T>>> safePost<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return Either.right(response);
    } on DioException catch (exception) {
      return Either.left(exception);
    }
  }

  Future<Either<DioException, Response<T>>> safePut<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return Either.right(response);
    } on DioException catch (exception) {
      return Either.left(exception);
    }
  }

  Future<Either<DioException, Response<T>>> safeDelete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      return Either.right(response);
    } on DioException catch (exception) {
      return Either.left(exception);
    }
  }
}

extension DioExceptionMapper on DioException {
  ErrorResponse toResponse() {
    return ErrorResponse(error: type.name, message: message ?? '');
  }
}
