import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';
import 'package:voucher_hub/voucher/domain/model/voucher.dart';
import 'package:voucher_hub/voucher/domain/repository/voucher_repository.dart';

part 'voucher_details_bloc.freezed.dart';

part 'voucher_details_event.dart';

part 'voucher_details_state.dart';

class VoucherDetailsBloc
    extends Bloc<VoucherDetailsEvent, VoucherDetailsState> {
  final int _id;
  final VoucherRepository _repository;

  VoucherDetailsBloc({required int id, required VoucherRepository repository})
    : _id = id,
      _repository = repository,
      super(const VoucherDetailsState.initial()) {
    on<_GetVoucher>(_getVoucher);
    on<_RefreshVoucher>(_refreshVoucher);
    add(const VoucherDetailsEvent.getVoucher());
  }

  Future<void> _getVoucher(
    _GetVoucher _,
    Emitter<VoucherDetailsState> emit,
  ) async {
    await _getVoucherInternal(emit);
  }

  Future<void> _refreshVoucher(
      _RefreshVoucher _,
      Emitter<VoucherDetailsState> emit,
      ) async {
    await _getVoucherInternal(emit);
  }

  Future<void> _getVoucherInternal(Emitter<VoucherDetailsState> emit) async {
    if (state is _Loading) return;

    emit(const VoucherDetailsState.loading());

    final result = await _repository.getVoucher(_id);

    result.fold(
      (error) => emit(VoucherDetailsState.failure(error)),
      (voucher) => emit(VoucherDetailsState.success(voucher)),
    );
  }
}
