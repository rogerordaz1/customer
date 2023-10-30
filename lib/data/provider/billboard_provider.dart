import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class BillBoardProvider {
  BillBoardProvider();

  Future<Billboard> listBillboard(BillboardRequest billboardRequest) async {
    return Billboard.fromJson((await ApiConnect.instance.post(
      EndPoints.listBillboard,
      billboardRequest.toJson(),
    ))
        .getBody());
  }
}
