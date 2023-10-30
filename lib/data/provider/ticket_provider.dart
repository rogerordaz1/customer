import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';

class TicketProvider {
  TicketProvider();

  Future<String> transfer(String phoneOrEmail, int ticketId) async {
    return (await ApiConnect.instance.patch(EndPoints.ticketTransfer,
            {"phoneOrEmail": phoneOrEmail, "ticketId": ticketId}))
        .getBody();
  }
}
