import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class SnackProvider {
  SnackProvider();

  Future<SnackID> snackId(int showId, String token) async {
    return SnackID.fromJson((await ApiConnect.instance.get(EndPoints.snackID,
            headers: {'Authorization': 'Bearer $token'}))
        .getBody());
  }

  Future<Snack> snackReserve(SnackRequest snackRequest) async {
    return Snack.fromJson((await ApiConnect.instance
            .post(EndPoints.snackReserve, snackRequest.toJson()))
        .getBody());
  }
}
