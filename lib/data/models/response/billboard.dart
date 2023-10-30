import 'package:freezed_annotation/freezed_annotation.dart';

part 'billboard.freezed.dart';
part 'billboard.g.dart';

@freezed
class Billboard with _$Billboard {
  factory Billboard({
    List<DataBillboard>? data,
    required String message,
    @Default([]) List<String> errors,
    required bool isSuccess,
    required int pageSize,
    required int pageNumber,
    required int totalPages,
    required int totalRecords,
  }) = _Billboard;

  factory Billboard.fromJson(Map<String, dynamic> json) =>
      _$BillboardFromJson(json);
}

@freezed
class DataBillboard with _$DataBillboard {
  factory DataBillboard({
    required String urlImage,
    required String name,
    required DateTime startDate,
    DateTime? finishDate,
    required double price,
    required String location,
    String? artist,
    String? organizer,
    required int orderPriority,
  }) = _Datum;

  factory DataBillboard.fromJson(Map<String, dynamic> json) =>
      _$DataBillboardFromJson(json);
}
