import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_request.freezed.dart';
part 'passport_request.g.dart';

@freezed
class PassportConsumedSoldRequest with _$PassportConsumedSoldRequest {
  factory PassportConsumedSoldRequest({
    required DateTime specificDate,
    required DateTime startDate,
    required DateTime endDate,
    required String event,
    required String show,
    required String location,
  }) = _PassportConsumedSoldRequest;

  factory PassportConsumedSoldRequest.fromJson(Map<String, dynamic> json) =>
      _$PassportConsumedSoldRequestFromJson(json);
}

@freezed
class PassportUsedRequest with _$PassportUsedRequest {
  factory PassportUsedRequest({
    required DateTime usageDate,
    required DateTime startDate,
    required DateTime endDate,
    required String event,
    required String show,
    required String location,
  }) = _PassportUsedRequest;

  factory PassportUsedRequest.fromJson(Map<String, dynamic> json) =>
      _$PassportUsedRequestFromJson(json);
}
