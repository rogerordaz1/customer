import 'package:get/get.dart';
import 'package:app/data/provider/providers.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(provider: AuthProvider()),
    );
  }
}
