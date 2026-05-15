import 'package:fpdart/fpdart.dart';
import 'package:voucher_hub/error_handling/data/remote/mapper/error_response.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/voucher/data/remote/data_source/data_source.dart';
import 'package:voucher_hub/voucher/data/remote/mapper/voucher_response.dart';
import 'package:voucher_hub/voucher/domain/model/voucher.dart';
import 'package:voucher_hub/voucher/domain/repository/voucher_repository.dart';

final class VoucherRepositoryImpl implements VoucherRepository {
  final RemoteVoucherDataSource _dataSource;

  VoucherRepositoryImpl(this._dataSource);

  @override
  Future<Either<ErrorData, List<Voucher>>> getVouchers() {
    return _dataSource.getVouchers().then(
      (result) => result.bimap(
        (error) => error.toDomain(),
        (response) => response.map((item) => item.toDomain()).toList(),
      ),
    );
  }

  @override
  Future<Either<ErrorData, Voucher>> getVoucher(int id) {
    return _dataSource
        .getVoucher(id)
        .then(
          (result) => result.bimap(
            (error) => error.toDomain(),
            (response) => response.toDomain(),
          ),
        );
  }
}
