import 'package:freezed_annotation/freezed_annotation.dart';

part 'snack.freezed.dart';
part 'snack.g.dart';

@freezed
class Snack with _$Snack {
  factory Snack({
    required double totalToPay,
    required int totalProduct,
  }) = _Snack;

  factory Snack.fromJson(Map<String, dynamic> json) => _$SnackFromJson(json);
}

@freezed
class SnackID with _$SnackID {
  factory SnackID({
    List<DataSnackId>? data,
    String? message,
    @Default([]) List<String> errors,
    required bool isSuccess,
    required int pageNumber,
    required int pageSize,
    required int totalPages,
    required int totalRecords,
  }) = _SnackID;

  factory SnackID.fromJson(Map<String, dynamic> json) =>
      _$SnackIDFromJson(json);
}

@freezed
class DataSnackId with _$DataSnackId {
  factory DataSnackId({
    required int id,
    required String snackName,
    required String description,
    required double price,
    required String imageUrl,
    required int stock,
  }) = _DataSnackId;

  factory DataSnackId.fromJson(Map<String, dynamic> json) =>
      _$DataSnackIdFromJson(json);
}
