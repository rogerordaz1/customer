import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class ShowProvider {
  ShowProvider();

  Future<Show> listBasic(ShowListBasicRequest listBasicRequest) async {
    return Show.fromJson((await ApiConnect.instance.post(
            EndPoints.showListBasicShowDetails, listBasicRequest.toJson()))
        .getBody());
  }

  Future<Show> listLong(ShowListLongRequest showListLongRequest) async {
    return Show.fromJson((await ApiConnect.instance.post(
            EndPoints.showListLongShowDetails, showListLongRequest.toJson()))
        .getBody());
  }

  Future<Show> list(ShowListRequest showListRequest) async {
    return Show.fromJson((await ApiConnect.instance
            .post(EndPoints.showListShow, showListRequest.toJson()))
        .getBody());
  }
}
