import 'package:get/get.dart';
import 'settings.dart';

class SettingsRoutes {
  SettingsRoutes._();

  static const settings = '/settings';
  static const editPerfile = '/edit_perfil';
  static const soporte = '/soporte';
  static const checkCode = '/check_code';
  static const changePass = '/change_pass';

  static final routes = [
    GetPage(
        name: settings,
        page: () => const SettingsPage(),
        binding: SettingsBinding(),
        children: [
          GetPage(
              name: editPerfile,
              page: () => const EditPerfilPage(),
              binding: EditPerfilBinding()),
          GetPage(
              name: soporte,
              page: () => const SoportePage(),
              binding: SoporteBinding()),
          GetPage(
            name: checkCode,
            page: () => const CheckCodePage(),
            binding: CheckCodeBinding(),
            transition: Transition.downToUp,
          ),
          GetPage(
              name: changePass,
              page: () => const ChangePassPage(),
              binding: ChangePassBinding()),
        ]),
  ];
}
