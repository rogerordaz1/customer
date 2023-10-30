import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_request.freezed.dart';
part 'events_request.g.dart';

@freezed
class EventsBasicRequest with _$EventsBasicRequest {
  factory EventsBasicRequest({
    required String eventName,
    required String artist,
    required DateTime startDate,
    required DateTime finishDate,
    required String shortDescription,
    required int locationId,
    required int organizerId,
    required int orderPriority,
  }) = _EventsBasicRequest;

  factory EventsBasicRequest.fromJson(Map<String, dynamic> json) =>
      _$EventsBasicRequestFromJson(json);
}

@freezed
class EventsDetailsRequest with _$EventsDetailsRequest {
  factory EventsDetailsRequest({
    required String eventName,
    required String artist,
    required DateTime startDate,
    required DateTime finishDate,
    required int locationId,
    required int organizerId,
    required int orderPriority,
    required String longDescription,
  }) = _EventsDetailsRequest;

  factory EventsDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$EventsDetailsRequestFromJson(json);
}

@freezed
class EventsListRequest with _$EventsListRequest {
  factory EventsListRequest({
    required String eventName,
    required DateTime publishingDate,
    required DateTime startDate,
    required DateTime finishDate,
    required int orderPriority,
    required String status,
    required int organizerIds,
    required int locationId,
  }) = _EventsListRequest;

  factory EventsListRequest.fromJson(Map<String, dynamic> json) =>
      _$EventsListRequestFromJson(json);
}
