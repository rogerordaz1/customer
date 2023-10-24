import 'package:app/modules/auth/register/pages/activate_acount_page.dart';
import 'package:get/get.dart';

import '../register.dart';

class RegisterRoutes {
  RegisterRoutes._();

  static const register = '/register';
  static const activateAcount = '/activate-acount';

  static final routes = [
    GetPage(
      name: register,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
      children: [
        GetPage(
          name: activateAcount,
          page: () => const ActivateAcountPage(),
        )
      ],
    ),
  ];
}
