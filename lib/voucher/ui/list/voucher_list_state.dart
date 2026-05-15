part of 'voucher_list_bloc.dart';

@freezed
class VoucherListState with _$VoucherListState {
  const factory VoucherListState.initial() = _Initial;
  const factory VoucherListState.loading() = _Loading;
  const factory VoucherListState.success(List<Voucher> vouchers) = _Success;
  const factory VoucherListState.empty() = _Empty;
  const factory VoucherListState.failure(ErrorData error) = _Failure;
}
