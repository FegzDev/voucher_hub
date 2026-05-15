import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/auth/domain/model/login_data.dart';
import 'package:voucher_hub/auth/domain/repository/auth_repository.dart';
import 'package:voucher_hub/error_handling/domain/model/error_data.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _repository;

  LoginBloc(this._repository) : super(const LoginState.initial()) {
    on<_LoginSubmitted>(_onLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(
    _LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state is _Loading) return;

    emit(const LoginState.loading());

    final result = await _repository.login(
      email: event.email,
      password: event.password,
    );

    result.fold(
      (error) => emit(LoginState.failure(error)),
      (data) => emit(LoginState.success(data)),
    );
  }
}
