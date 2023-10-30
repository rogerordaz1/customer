import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_event.freezed.dart';
part 'passport_event.g.dart';

@freezed
class PassportEvent with _$PassportEvent {
  factory PassportEvent({
    List<DataPassportEvent>? data,
    String? message,
    @Default([]) List<String> errors,
    required bool isSuccess,
  }) = _PassportEvent;

  factory PassportEvent.fromJson(Map<String, dynamic> json) =>
      _$PassportEventFromJson(json);
}

@freezed
class DataPassportEvent with _$DataPassportEvent {
  factory DataPassportEvent({
    required int id,
    required int quantity,
    required double price,
  }) = _DataPassportEvent;

  factory DataPassportEvent.fromJson(Map<String, dynamic> json) =>
      _$DataPassportEventFromJson(json);
}
