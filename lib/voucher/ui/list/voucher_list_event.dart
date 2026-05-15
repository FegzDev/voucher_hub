part of 'voucher_list_bloc.dart';

@freezed
class VoucherListEvent with _$VoucherListEvent {
  const factory VoucherListEvent.getVouchers() = _GetVouchers;
  const factory VoucherListEvent.refreshVouchers() = _RefreshVouchers;
}
