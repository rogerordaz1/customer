import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserLogout with _$UserLogout {
  factory UserLogout({
    required String message,
  }) = _UserLogout;

  factory UserLogout.fromJson(Map<String, dynamic> json) =>
      _$UserLogoutFromJson(json);
}

@freezed
class UserPreferences with _$UserPreferences {
  factory UserPreferences({
    required String name,
    String? lastName,
    String? identityCard,
    String? passport,
    required bool navWithoutImages,
    required int maxMbCapacity,
    required bool notifications,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}
