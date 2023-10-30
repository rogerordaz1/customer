import 'package:get/get.dart';
import '../../../../data/provider/providers.dart';
import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    // final flutterSecureStorage = Get.find<FlutterSecureStorage>();

    Get.lazyPut<RegisterController>(
      () => RegisterController(provider: AuthProvider()),
    );
  }
}
