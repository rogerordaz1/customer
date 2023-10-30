import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  factory Auth({
    DataAuth? data,
    String? message,
    @Default([]) List<String> errors,
    required bool isSuccess,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}

@freezed
class DataAuth with _$DataAuth {
  factory DataAuth({
    required AccessToken accessToken,
    required RefreshToken refreshToken,
  }) = _DataAuth;

  factory DataAuth.fromJson(Map<String, dynamic> json) =>
      _$DataAuthFromJson(json);
}

@freezed
class AccessToken with _$AccessToken {
  factory AccessToken({
    required String token,
    required DateTime expiration,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);
}

@freezed
class RefreshToken with _$RefreshToken {
  factory RefreshToken({
    required int appUserId,
    required String token,
    required DateTime expires,
    required String createdByIp,
  }) = _RefreshToken;

  factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenFromJson(json);
}
