import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:voucher_hub/user/domain/model/user.dart';
import 'package:voucher_hub/user/domain/repository/user_repository.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _repository;

  UserBloc(this._repository) : super(const UserState.initial()) {
    on<_Started>(_onStarted);
    add(const UserEvent.started());
  }

  Future<void> _onStarted(_Started _, Emitter<UserState> emit) async {
    await emit.forEach(
      _repository.getLocalUserStream(),
      onData: (user) {
        if (user == null) {
          return const UserState.unauthenticated();
        } else {
          return UserState.authenticated(user);
        }
      },
    );
  }
}
