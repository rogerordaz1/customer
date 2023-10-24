import 'package:app/modules/auth/recovery_password/pages/recovery_password_enter_code_page.dart';
import 'package:app/modules/auth/recovery_password/routes/recovery_password_binding.dart';
import 'package:app/modules/auth/recovery_password/pages/recovery_password_page.dart';
import 'package:get/get.dart';

class RecoveryPasswordRoutes {
  RecoveryPasswordRoutes._();

  static const recovery = '/recovery';
  static const recoveryEntrerCode = '/enter-code';

  static final routes = [
    GetPage(
        name: recovery,
        page: () => const RecoveryPasswordPage(),
        binding: RecoveryPasswordBinding(),
        children: [
          GetPage(
            name: recoveryEntrerCode,
            page: () => const RecoveryPasswordEnterCodePage(),
          )
        ]),
  ];
}
