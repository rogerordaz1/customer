import 'package:get/get.dart';

import 'my_reservation.dart';

class MyReservationRoutes {
  MyReservationRoutes._();

  static const myReservations = '/my_reservations';

  static final routes = [
    GetPage(
      name: myReservations,
      page: () => const MyReservationPage(),
      binding: MyReservationBinding(),
    ),
  ];
}
