import 'package:app/modules/auth/recovery_password/enter_code_page.dart';
import 'package:app/modules/auth/recovery_password/recovery_password_binding.dart';
import 'package:app/modules/auth/recovery_password/recovery_password_page.dart';
import 'package:get/get.dart';

class RecoveryPasswordRoutes {
  RecoveryPasswordRoutes._();

  static const recovery = '/recovery';

  static final routes = [
    GetPage(
        name: recovery,
        page: () => const RecoveryPasswordPage(),
        binding: RecoveryPasswordBinding(),
        children: [
          GetPage(
            name: '${recovery}_enter_code',
            page: () => const EnterCodePage(),
          )
        ]),
  ];
}
