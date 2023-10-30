import 'package:app/modules/layout/controllers/layout_controller.dart';
import 'package:app/modules/search/controllers/search_controller.dart';
import 'package:app/modules/settings/controllers/settings_controller.dart';
import 'package:get/get.dart';

class LayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutController>(() => LayoutController());
    Get.put<MySearchController>(MySearchController());
    Get.put<SettingsController>(SettingsController());
  }
}
