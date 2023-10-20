import 'package:app/modules/layout/controllers/layout_state.dart';
import 'package:get/get.dart';

class LayoutController extends GetxController {
  final layoutState = LayoutState(selectedIndex: 0).obs;

  void updateSelectedIndex(int value) {
    layoutState(layoutState.value.copyWith(selectedIndex: value));
  }


}
