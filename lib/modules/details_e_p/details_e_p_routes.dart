import 'package:get/get.dart';

import 'details_e_p.dart';

class DetailsEPRoutes {
  DetailsEPRoutes._();

  static const detailsEP = '/details_e_p';

  static final routes = [
    GetPage(
      name: detailsEP,
      page: () => const DetailsEPPage(),
      // TODO: cambiar argumento despues
      arguments: bool,
      binding: DetailsEPBinding(),
    ),
  ];
}
