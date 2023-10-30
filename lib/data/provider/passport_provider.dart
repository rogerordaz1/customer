import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class PassportProvider {
  PassportProvider();

  Future<Passport> consumed(
      PassportConsumedSoldRequest passportConsumedRequest, String token) async {
    return Passport.fromJson((await ApiConnect.instance.post(
      EndPoints.passportConsumed,
      passportConsumedRequest.toJson(),
      headers: {'Authorization': 'Bearer $token'},
    ))
        .getBody());
  }

  Future<Passport> solf(
      PassportConsumedSoldRequest passportConsumedRequest, String token) async {
    return Passport.fromJson((await ApiConnect.instance.post(
      EndPoints.passportSold,
      passportConsumedRequest.toJson(),
      headers: {'Authorization': 'Bearer $token'},
    ))
        .getBody());
  }

  Future<Passport> used(
      PassportUsedRequest passportUsedRequest, String token) async {
    return Passport.fromJson((await ApiConnect.instance.post(
            EndPoints.passportUsed, passportUsedRequest.toJson(),
            headers: {'Authorization': 'Bearer $token'}))
        .getBody());
  }
}
