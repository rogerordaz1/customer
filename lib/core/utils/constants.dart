class EndPoints {
  const EndPoints._();

  static const String baseUrl = 'https://papeleta.api.prod.avangenio.net';
  // Auth
  static const String authActivate = "/auth/activate";
  static const String authRecover = "/auth/recover";
  static const String authRefreshToken = "/auth/refresh-token";
  static const String authRegister = "/auth/register";
  static const String authToken = "/auth/token";
  static const String authVericationCode = "/auth/verification-code";
  // Billboard
  static const String listBillboard = "/billboard/listBillboard";
  // Category
  static const String categoryList = "/category/list";
  // Event
  static const String eventsBasic = "/events/basic";
  static const String eventsCreate = "/events/create";
  static const String eventsDetails = "/events/details";
  static const String eventsList = "/events/list";
  static const String eventsMock = "/events/mock";
  // Map
  static const String mapEventPlaces = "/map/event-places";
  static const String mapEvents = "/map/events";
  static const String mapEventsSearch = "/map/events-search";
  // Passport
  static const String passportConsumed = "/passport/consumed";
  static const String passportSold = "/passport/sold";
  static const String passportUsed = "/passport/used";
  // Passport Event
  static const String passportEventList = "/passport-event/list";
  // Payment
  static const String paymentPassportCheckout = "/payment/passport-checkout";
  static const String paymentTicketCheckout = "/payment/ticket-checkout";
  // Place
  static const String placeList = "/place/list";
  // Show
  static const String showListBasicShowDetails = "/show/listBasicShowDetails";
  static const String showListLongShowDetails = "/show/listLongShowDetails";
  static const String showListShow = "/show/listShow";
  // Snack
  static const String snackID = "/snack/"; // Pasarle el id atras
  static const String snackReserve = "/snack/reserve";
  // Ticket
  static const String ticketTransfer = "/ticket/transfer";
  // Ticket-Passport
  static const String ticketPassportList = "/ticket-passport/list";
  // User
  static const String userLogout = "/user/logout";
  static const String userPreferences = "/user/preferences";

  static const Duration timeout = Duration(seconds: 30);

  // static const String token = 'token';
}

const String kaccessToken = 'ACCESSTOKEN';

// enum LoadDataState { initialize, loading, loaded, error, timeout, unknownerror }
