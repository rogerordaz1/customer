import 'package:get/get.dart';

import '../login.dart';

class LoginRoutes {
  LoginRoutes._();

  static const login = '/login';

  static final routes = [
    GetPage(
      name: login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
