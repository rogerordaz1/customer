import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class PassportEventProvider {
  PassportEventProvider();

  Future<PassportEvent> list(int eventId) async {
    return PassportEvent.fromJson((await ApiConnect.instance
            .get('${EndPoints.passportEventList}/$eventId'))
        .getBody());
  }
}
