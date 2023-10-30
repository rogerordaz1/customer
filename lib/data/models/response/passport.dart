import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport.freezed.dart';
part 'passport.g.dart';

@freezed
class Passport with _$Passport {
  factory Passport({
    int? passportQuantity,
    int? ticketQuantity,
    int? quantity,
  }) = _Passport;

  factory Passport.fromJson(Map<String, dynamic> json) =>
      _$PassportFromJson(json);
}
