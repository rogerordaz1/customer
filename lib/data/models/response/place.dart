import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  factory Place({
    List<DataPlace>? data,
    String? message,
    @Default([]) List<String> errors,
    required bool isSuccess,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

@freezed
class DataPlace with _$DataPlace {
  factory DataPlace({
    required int id,
    required String namePlace,
    required String address,
  }) = _DataPlace;

  factory DataPlace.fromJson(Map<String, dynamic> json) =>
      _$DataPlaceFromJson(json);
}
