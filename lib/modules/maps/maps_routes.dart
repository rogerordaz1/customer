import 'package:get/get.dart';

import './maps.dart';

class MapsRoutes {
  MapsRoutes._();

  static const maps = '/maps';

  static final routes = [
    GetPage(
      name: maps,
      page: () => const MapsPage(),
      binding: MapsBinding(),
    ),
  ];
}
