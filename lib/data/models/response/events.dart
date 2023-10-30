import 'package:freezed_annotation/freezed_annotation.dart';

part 'events.freezed.dart';
part 'events.g.dart';

@freezed
class Events with _$Events {
  factory Events({
    List<DataEvents>? data,
    String? message,
    @Default([]) List<String> errors,
    required bool isSuccess,
    required int pageNumber,
    required int pageSize,
    required int totalPages,
    required int totalRecords,
  }) = _Events;

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
}

@freezed
class DataEvents with _$DataEvents {
  factory DataEvents({
    required String urlImage,
    required String eventName,
    DateTime? publishingDate,
    String? status,
    required DateTime startDate,
    DateTime? finishDate,
    required String location,
    required String organizer,
    required int orderPriority,
    String? shortDescription,
    String? longDescription,
  }) = _DataEvents;

  factory DataEvents.fromJson(Map<String, dynamic> json) =>
      _$DataEventsFromJson(json);
}
