import 'package:app/modules/search/controllers/search_controller.dart';
import 'package:get/get.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MySearchController>(
      () => MySearchController(),
    );
  }
}
