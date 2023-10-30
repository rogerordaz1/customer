import 'package:get/get.dart';
import 'package:app/modules/settings/settings.dart';

class SoporteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SoporteController>(
      () => SoporteController(),
    );
  }
}
