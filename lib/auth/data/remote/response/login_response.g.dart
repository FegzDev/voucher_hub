// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      accessToken: json['accessToken'] as String,
      expiresAtUtc: json['expiresAtUtc'] as String,
      user: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );
