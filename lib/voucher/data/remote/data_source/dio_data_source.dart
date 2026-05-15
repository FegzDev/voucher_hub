import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/error_handling/data/remote/response/error_response.dart';
import 'package:voucher_hub/network/error_handling/dio.dart';
import 'package:voucher_hub/network/extension/http_status.dart';
import 'package:voucher_hub/voucher/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/voucher/data/remote/response/voucher_response.dart';
import 'package:voucher_hub/voucher/data/remote/util/api_defaults.dart';

final class DioVoucherDataSource implements RemoteVoucherDataSource {
  final Dio _dio;

  DioVoucherDataSource(this._dio);

  @override
  Future<Either<ErrorResponse, List<VoucherResponse>>> getVouchers() async {
    final result = await _dio.safeGet(VoucherApiDefaults.vouchersUrl);

    return result.fold(
      (exception) {
        return Either.left(exception.toResponse());
      },
      (response) {
        if (response.statusCode?.isSuccess() != true) {
          return Either.left(ErrorResponse.fromJson(response.data));
        }

        final data = response.data as List<dynamic>;

        final responses = data
            .map(
              (json) => VoucherResponse.fromJson(json as Map<String, dynamic>),
            )
            .toList();

        return Either.right(responses);
      },
    );
  }

  @override
  Future<Either<ErrorResponse, VoucherResponse>> getVoucher(int id) async {
    final result = await _dio.safeGet(VoucherApiDefaults.getVoucherUrl(id));

    return result.fold(
      (exception) {
        return Either.left(exception.toResponse());
      },
      (response) {
        if (response.statusCode?.isSuccess() != true) {
          return Either.left(ErrorResponse.fromJson(response.data));
        }

        return Either.right(VoucherResponse.fromJson(response.data));
      },
    );
  }
}
