import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/error_handling/data/remote/response/error_response.dart';
import 'package:voucher_hub/voucher/data/remote/response/voucher_response.dart';

abstract interface class RemoteVoucherDataSource {
  Future<Either<ErrorResponse, List<VoucherResponse>>> getVouchers();

  Future<Either<ErrorResponse, VoucherResponse>> getVoucher(int id);
}
