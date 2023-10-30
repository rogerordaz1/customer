import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class EventsProvider {
  EventsProvider();

  Future<Events> basic(EventsBasicRequest eventsBasicRequest) async {
    return Events.fromJson((await ApiConnect.instance.post(
      EndPoints.eventsBasic,
      eventsBasicRequest.toJson(),
    ))
        .getBody());
  }

  Future<Events> create(String name, String description) async {
    return Events.fromJson((await ApiConnect.instance.post(
      EndPoints.eventsCreate,
      {"name": name, "description": description},
    ))
        .getBody());
  }

  Future<Events> details(EventsDetailsRequest eventsDetalRequest) async {
    return Events.fromJson((await ApiConnect.instance.post(
      EndPoints.eventsDetails,
      eventsDetalRequest.toJson(),
    ))
        .getBody());
  }

  Future<Events> list(EventsListRequest eventsListRequest, String token) async {
    return Events.fromJson((await ApiConnect.instance.post(
            EndPoints.eventsList, eventsListRequest.toJson(),
            headers: {'Authorization': 'Bearer $token'}))
        .getBody());
  }

  Future<Events> mock() async {
    return Events.fromJson(
        (await ApiConnect.instance.post(EndPoints.eventsMock, {})).getBody());
  }
}
