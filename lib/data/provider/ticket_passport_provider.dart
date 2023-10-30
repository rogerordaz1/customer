import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class TicketPassport {
  TicketPassport();

  Future<Ticket> list(int pageIndex, int pageSize) async {
    return Ticket.fromJson(
        (await ApiConnect.instance.get(EndPoints.ticketPassportList))
            .getBody());
  }
}
