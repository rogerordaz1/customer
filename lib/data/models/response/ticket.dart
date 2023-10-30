import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  factory Ticket({
    List<DataTicket>? data,
    String? message,
    @Default([]) List<String> errors,
    required bool isSuccess,
    required int pageNumber,
    required int pageSize,
    required int totalPages,
    required int totalRecords,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}

@freezed
class DataTicket with _$DataTicket {
  factory DataTicket({
    required TicketList ticketList,
    required PassportList passportList,
  }) = _DataTicket;

  factory DataTicket.fromJson(Map<String, dynamic> json) =>
      _$DataTicketFromJson(json);
}

@freezed
class PassportList with _$PassportList {
  factory PassportList({
    required String urlImage,
    required String eventName,
    required String showName,
    required int quantity,
    required String locationName,
    required PassportDetails passportDetails,
  }) = _PassportList;

  factory PassportList.fromJson(Map<String, dynamic> json) =>
      _$PassportListFromJson(json);
}

@freezed
class PassportDetails with _$PassportDetails {
  factory PassportDetails({
    required int passportId,
    required String passportEventName,
    required String urlImage,
    required int quantity,
    required String location,
    required int status,
    required EventDetails eventDetails,
    required String qr,
    required String reservedBy,
    required int ticketsAvailable,
    required int ticketsSold,
    required String snackDescription,
  }) = _PassportDetails;

  factory PassportDetails.fromJson(Map<String, dynamic> json) =>
      _$PassportDetailsFromJson(json);
}

@freezed
class EventDetails with _$EventDetails {
  factory EventDetails({
    required String urlImage,
    required String eventName,
    required DateTime startDate,
    DateTime? finishDate,
    required String location,
    required String organizer,
    required int orderPriority,
    required String longDescription,
  }) = _EventDetails;

  factory EventDetails.fromJson(Map<String, dynamic> json) =>
      _$EventDetailsFromJson(json);
}

@freezed
class TicketList with _$TicketList {
  factory TicketList({
    required int ticketId,
    required String ticketShowName,
    required String urlImage,
    required int quantity,
    required DateTime startDate,
    required String location,
    required int status,
    required TicketDetails ticketDetails,
  }) = _TicketList;

  factory TicketList.fromJson(Map<String, dynamic> json) =>
      _$TicketListFromJson(json);
}

@freezed
class TicketDetails with _$TicketDetails {
  factory TicketDetails({
    required String urlImage,
    required String showName,
    required String reservedBy,
    required int quantity,
    required String location,
    required String snackDescription,
    required String placePolicies,
    required int status,
    required String qr,
    required ShowDetails showDetails,
  }) = _TicketDetails;

  factory TicketDetails.fromJson(Map<String, dynamic> json) =>
      _$TicketDetailsFromJson(json);
}

@freezed
class ShowDetails with _$ShowDetails {
  factory ShowDetails({
    required String urlImage,
    required String showName,
    required DateTime startDate,
    DateTime? finishDate,
    required String location,
    required double price,
    required String artist,
    required int orderPriority,
    required String longDescription,
  }) = _ShowDetails;

  factory ShowDetails.fromJson(Map<String, dynamic> json) =>
      _$ShowDetailsFromJson(json);
}
