import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_request.freezed.dart';
part 'payment_request.g.dart';

@freezed
class PaymentRequest with _$PaymentRequest {
  factory PaymentRequest({
    required TicketOrderRequest ticketOrder,
    required List<ShowSnackOrderRequest> showSnackOrder,
  }) = _PaymentRequest;

  factory PaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestFromJson(json);
}

@freezed
class ShowSnackOrderRequest with _$ShowSnackOrderRequest {
  factory ShowSnackOrderRequest({
    required int showSnacksId,
    required int showSnackOrderPrice,
    required int snackQuantity,
  }) = _ShowSnackOrderRequest;

  factory ShowSnackOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$ShowSnackOrderRequestFromJson(json);
}

@freezed
class TicketOrderRequest with _$TicketOrderRequest {
  factory TicketOrderRequest({
    required int showId,
    required int ticketOrderPrice,
    required int ticketQuantity,
  }) = _TicketOrderRequest;

  factory TicketOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$TicketOrderRequestFromJson(json);
}
