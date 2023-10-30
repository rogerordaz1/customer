import 'package:get/get.dart';
import 'my_reservation_controller.dart';

class MyReservationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyReservationController>(() => MyReservationController());
  }
}
