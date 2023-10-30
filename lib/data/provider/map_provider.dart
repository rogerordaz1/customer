import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';

class MapProvider {
  MapProvider();

  Future<String> eventPlaces() async {
    return (await ApiConnect.instance.post(EndPoints.mapEventPlaces, {}))
        .getBody();
  }

  Future<String> events() async {
    return (await ApiConnect.instance.post(EndPoints.mapEvents, {})).getBody();
  }

  Future<String> eventSearch() async {
    return (await ApiConnect.instance.post(EndPoints.mapEventsSearch, {}))
        .getBody();
  }
}
