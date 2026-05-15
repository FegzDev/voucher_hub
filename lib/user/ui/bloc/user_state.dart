part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;

  const factory UserState.authenticated(User user) = _Authenticated;

  const factory UserState.unauthenticated() = _Unauthenticated;
}
