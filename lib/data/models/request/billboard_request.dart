import 'package:freezed_annotation/freezed_annotation.dart';

part 'billboard_request.freezed.dart';
part 'billboard_request.g.dart';

@freezed
class BillboardRequest with _$BillboardRequest {
  factory BillboardRequest({
    required String showName,
    required DateTime publishingDate,
    required DateTime startDate,
    required DateTime finishDate,
    required int orderPriority,
    required int price,
    required int organizerIds,
    required int artistIds,
    required int locationId,
  }) = _BillboardRequest;

  factory BillboardRequest.fromJson(Map<String, dynamic> json) =>
      _$BillboardRequestFromJson(json);
}
