import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  factory ErrorResponse({
    required String type,
    required String title,
    required int status,
    required String instance,
    required String traceId,
    @Default([]) List<Error> errors,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

@freezed
class Error with _$Error {
  factory Error({
    required String name,
    required String reason,
    String? code,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}
