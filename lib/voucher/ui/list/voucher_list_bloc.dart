import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/voucher/domain/model/voucher.dart';
import 'package:voucher_hub/voucher/domain/repository/voucher_repository.dart';

part 'voucher_list_bloc.freezed.dart';

part 'voucher_list_event.dart';

part 'voucher_list_state.dart';

class VoucherListBloc extends Bloc<VoucherListEvent, VoucherListState> {
  final VoucherRepository _repository;

  VoucherListBloc(this._repository) : super(const VoucherListState.initial()) {
    on<_GetVouchers>(_onGetVouchers);
    on<_RefreshVouchers>(_onRefreshVouchers);
    add(const VoucherListEvent.getVouchers());
  }

  Future<void> _onGetVouchers(
    _GetVouchers _,
    Emitter<VoucherListState> emit,
  ) async {
    await _getVouchers(emit);
  }

  Future<void> _onRefreshVouchers(
    _RefreshVouchers _,
    Emitter<VoucherListState> emit,
  ) async {
    await _getVouchers(emit);
  }

  Future<void> _getVouchers(Emitter<VoucherListState> emit) async {
    if (state is _Loading) return;

    emit(const VoucherListState.loading());

    final result = await _repository.getVouchers();

    result.fold(
      (error) {
        emit(VoucherListState.failure(error));
      },
      (vouchers) {
        if (vouchers.isEmpty) {
          emit(const VoucherListState.empty());
        } else {
          emit(VoucherListState.success(vouchers));
        }
      },
    );
  }
}
