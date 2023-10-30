import 'package:get/get.dart';
import 'package:app/modules/settings/settings.dart';

class CheckCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckCodeController>(() => CheckCodeController());
  }
}
