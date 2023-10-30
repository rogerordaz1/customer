import 'dart:convert';
import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';
import 'package:app/data/states/states.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:hive_flutter/hive_flutter.dart';

typedef GetAuth = Future<Either<Auth, List<String?>>>;
final box = Hive.box('settings');

class AuthProvider {
  AuthProvider();

  GetAuth activate(String activationCode) async {
    final result = await ApiConnect.instance.post(
      EndPoints.authActivate,
      {"activationCode": activationCode},
    );
    return _results(result);
  }

  GetAuth recover(String password, String code) async {
    final authResponse = await ApiConnect.instance.post(
      EndPoints.authRecover,
      {"password": password, "code": code},
    );
    return _results(authResponse);
  }

  // TODO: Revisar el header
  GetAuth refreshToken(String accessToken, String refreshToken) async {
    final authResponse = await ApiConnect.instance.post(
      EndPoints.authRefreshToken,
      {"accessToken": accessToken, "refreshToken": refreshToken},
      headers: {'Authorization': 'Bearer $accessToken'},
    );
    return _results(authResponse);
  }

  GetAuth register({
    required String email,
    required String phoneNumber,
    required String password,
  }) async {
    final authReponse = await ApiConnect.instance.post(
      EndPoints.authRegister,
      {"email": email, "phoneNumber": phoneNumber, "password": password},
    );

    return _results(authReponse);
  }

  GetAuth token(String phoneOrEmail, String password) async {
    final authResponse = await ApiConnect.instance.post(
      EndPoints.authToken,
      {"phoneOrEmail": phoneOrEmail, "password": password},
    );
    final result = _results(authResponse);
    result.whenOrNull(
      left: (auth) async {
        if (auth.isSuccess) {
          await box.put('token', auth.data!.accessToken.token);
        }
      },
    );
    return result;
  }

  GetAuth verificationCode(
      String phoneOrEmail, int confirmationCodeType) async {
    final authResponse = await ApiConnect.instance.post(
      EndPoints.authVericationCode,
      {
        "phoneOrEmail": phoneOrEmail,
        "confirmationCodeType": confirmationCodeType
      },
    );
    return _results(authResponse);
  }

  Either<Auth, List<String?>> _results(Response result) {
    if (result.isOk) {
      return Left(Auth.fromJson(result.getBody()));
    } else {
      if (result.statusCode == 400) {
        return Right(ErrorResponse.fromJson(jsonDecode(result.bodyString!))
            .errors
            .map((e) => e.reason)
            .toList());
      }
      return Right(['Ha ocurrido un error: ${result.statusText}']);
    }
  }
}
