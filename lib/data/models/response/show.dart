import 'package:freezed_annotation/freezed_annotation.dart';

part 'show.freezed.dart';
part 'show.g.dart';

@freezed
class Show with _$Show {
  factory Show({
    List<DataShow>? data,
    String? message,
    @Default([]) List<String> errors,
    required bool isSuccess,
    required int pageNumber,
    required int pageSize,
    required int totalPages,
    required int totalRecords,
  }) = _Show;

  factory Show.fromJson(Map<String, dynamic> json) => _$ShowFromJson(json);
}

@freezed
class DataShow with _$DataShow {
  factory DataShow({
    required String showName,
    String? urlImage,
    required DateTime startDate,
    DateTime? finishDate,
    required double price,
    String? shortDescription,
    String? longDescription,
    required String location,
    String? artist,
    required int orderPriority,
  }) = _DataShow;

  factory DataShow.fromJson(Map<String, dynamic> json) =>
      _$DataShowFromJson(json);
}
