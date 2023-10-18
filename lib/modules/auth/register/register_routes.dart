import 'package:get/get.dart';

import './register.dart';

class RegisterRoutes {
  RegisterRoutes._();

  static const register = '/register';

  static final routes = [
    GetPage(
      name: register,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),
  ];
}
