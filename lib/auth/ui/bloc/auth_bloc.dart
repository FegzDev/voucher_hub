import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/auth/domain/repository/auth_repository.dart';
import 'package:voucher_hub/user/domain/repository/user_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  AuthBloc({
    required AuthRepository authRepository,
    required UserRepository userRepository,
  }) : _authRepository = authRepository,
       _userRepository = userRepository,
       super(const AuthState.initial()) {
    on<_Logout>(_onLogout);
    on<_Started>(_onStarted);
    add(const AuthEvent.started());
  }

  Future<void> _onStarted(_Started _, Emitter<AuthState> emit) async {
    await emit.forEach(
      _authRepository.getLocalAccessTokenStream(),
      onData: (token) {
        if (token == null) {
          _userRepository.deleteLocalUser();
          return const AuthState.unauthenticated();
        } else {
          return const AuthState.authenticated();
        }
      },
    );
  }

  Future<void> _onLogout(_Logout _, Emitter<AuthState> _) async {
    await _authRepository.deleteLocalAccessToken();
  }
}
