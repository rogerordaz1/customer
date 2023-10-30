import 'package:app/modules/search/pages/search_page.dart';
import 'package:get/get.dart';

import '../pages/search_bindings.dart';

class SearchRoutes {
  SearchRoutes._();

  static const String name = '/search';

  static final routes = [
    GetPage(
        name: name,
        page: () => const SearchPage(),
        binding: SearchBinding(),
        children: const []),
  ];
}
