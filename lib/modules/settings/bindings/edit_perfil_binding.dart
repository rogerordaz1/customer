import 'package:get/get.dart';
import 'package:app/modules/settings/settings.dart';

class EditPerfilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditPerfilController>(
      () => EditPerfilController(),
    );
  }
}
