part of 'voucher_details_bloc.dart';

@freezed
class VoucherDetailsEvent with _$VoucherDetailsEvent {
  const factory VoucherDetailsEvent.getVoucher() = _GetVoucher;
  const factory VoucherDetailsEvent.refreshVoucher() = _RefreshVoucher;
}
