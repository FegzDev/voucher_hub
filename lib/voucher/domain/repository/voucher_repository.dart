import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/voucher/domain/model/voucher.dart';

abstract interface class VoucherRepository {
  Future<Either<ErrorData, List<Voucher>>> getVouchers();

  Future<Either<ErrorData, Voucher>> getVoucher(int id);
}
