import 'package:app/modules/checkout_module/controllers/checkout_controller.dart';
import 'package:get/get.dart';


class CheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckoutController>(
          () => CheckoutController(),
    );
  }
}
