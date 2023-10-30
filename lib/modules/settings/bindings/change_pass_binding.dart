import 'package:get/get.dart';
import 'package:app/modules/settings/settings.dart';

class ChangePassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePassController>(() => ChangePassController());
  }
}
