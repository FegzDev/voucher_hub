part of 'voucher_details_bloc.dart';

@freezed
class VoucherDetailsState with _$VoucherDetailsState {
  const factory VoucherDetailsState.initial() = _Initial;
  const factory VoucherDetailsState.loading() = _Loading;
  const factory VoucherDetailsState.success(Voucher voucher) = _Success;
  const factory VoucherDetailsState.failure(ErrorData error) = _Failure;
}
