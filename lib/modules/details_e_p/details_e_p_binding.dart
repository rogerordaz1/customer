import 'package:get/get.dart';
import 'details_e_p_controller.dart';

class DetailsEPBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsEPController>(() => DetailsEPController());
  }
}
