import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_request.freezed.dart';
part 'show_request.g.dart';

@freezed
class ShowListBasicRequest with _$ShowListBasicRequest {
  factory ShowListBasicRequest({
    required String eventName,
    required String artist,
    required DateTime startDate,
    required DateTime finishDate,
    required String shortDescription,
    required double price,
    required int locationId,
    required int artistId,
    required int orderPriority,
  }) = _ShowListBasicRequest;

  factory ShowListBasicRequest.fromJson(Map<String, dynamic> json) =>
      _$ShowListBasicRequestFromJson(json);
}

@freezed
class ShowListLongRequest with _$ShowListLongRequest {
  factory ShowListLongRequest(
      {required String eventName,
      required String artist,
      required DateTime startDate,
      required DateTime finishDate,
      required int locationId,
      required int organizerId,
      required int orderPriority,
      required String longDescription,
      required double price}) = _ShowListLongRequest;

  factory ShowListLongRequest.fromJson(Map<String, dynamic> json) =>
      _$ShowListLongRequestFromJson(json);
}

@freezed
class ShowListRequest with _$ShowListRequest {
  factory ShowListRequest({
    required String showName,
    required DateTime publishingDate,
    required DateTime startDate,
    required DateTime finishDate,
    required int orderPriority,
    required double price,
    required int organizerIds,
    required int locationId,
  }) = _ShowListRequest;

  factory ShowListRequest.fromJson(Map<String, dynamic> json) =>
      _$ShowListRequestFromJson(json);
}
