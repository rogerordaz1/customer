import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class PlaceProvider {
  PlaceProvider();

  Future<Place> list(String token) async {
    return Place.fromJson((await ApiConnect.instance.get(EndPoints.placeList,
            headers: {'Authorization': 'Bearer $token'}))
        .getBody());
  }
}
