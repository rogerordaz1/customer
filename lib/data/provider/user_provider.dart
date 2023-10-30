import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class UserProvider {
  UserProvider();

  Future<UserLogout> userLogout(String token) async {
    return UserLogout.fromJson((await ApiConnect.instance.post(
            EndPoints.userLogout, {},
            headers: {'Authorization': 'Bearer $token'}))
        .getBody());
  }

  Future<UserPreferences> userPreferences(String token) async {
    return UserPreferences.fromJson((await ApiConnect.instance.get(
            EndPoints.userPreferences,
            headers: {'Authorization': 'Bearer $token'}))
        .getBody());
  }
}
