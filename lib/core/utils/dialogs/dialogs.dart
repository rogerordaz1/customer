import 'package:app/core/utils/dialogs/widgets/widgets.dart';
import 'package:get/get.dart';

class CustomDialogs {
  static dynamic showSelectDialog() =>
      Get.dialog(const SelectPassportOrEntryDialog());
}
