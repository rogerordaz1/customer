import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class PaymentProvider {
  PaymentProvider();

  Future<Payment> passportCheckout(
      int eventId, int passportCapacity, int amount) async {
    return Payment.fromJson((await ApiConnect.instance.post(
            EndPoints.paymentPassportCheckout, {
      "eventId": eventId,
      "passportCapacity": passportCapacity,
      "amount": amount
    }))
        .getBody());
  }

  Future<Payment> ticketCheckout(PaymentRequest paymentRequest) async {
    return Payment.fromJson((await ApiConnect.instance
            .post(EndPoints.paymentTicketCheckout, paymentRequest.toJson()))
        .getBody());
  }
}
