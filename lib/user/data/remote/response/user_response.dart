import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';

part 'user_response.g.dart';

@Freezed(toJson: false)
abstract class UserResponse with _$UserResponse {
  const factory UserResponse({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
