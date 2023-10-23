import 'package:get/get.dart';

import '../home.dart';
import '../pages/show_list_page.dart';

class HomeRoutes {
  HomeRoutes._();

  static const home = '/home';
  static const showList = '/show-list';

  static final routes = [
    GetPage(
        name: home,
        page: () => const HomePage(),
        binding: HomeBinding(),
        children: [
          GetPage(
            name: showList,
            page: () => const ShowListPage(),
          )
        ]),
  ];
}
