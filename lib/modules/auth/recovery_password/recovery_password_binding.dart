import 'package:app/modules/auth/recovery_password/recovery_password_controller.dart';
import 'package:get/get.dart';

class RecoveryPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecoveryPasswordController>(
      () => RecoveryPasswordController(),
    );
  }
}
