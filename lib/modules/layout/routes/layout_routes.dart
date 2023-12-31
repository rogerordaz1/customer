import 'package:app/modules/layout/routes/layout_binding.dart';
import 'package:get/get.dart';

import '../pages/layout_page.dart';

class LayoutRoutes {
  LayoutRoutes._();

  static const name = '/layout';

  static final routes = [
    GetPage(
      name: name,
      page: () => const LayoutPage(),
      binding: LayoutBinding(),
    ),
  ];
}
