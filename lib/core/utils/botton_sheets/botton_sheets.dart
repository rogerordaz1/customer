import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../modules/home/widgets/widgets.dart';

class BottonSheets {
  BottonSheets._();

  static dynamic showEventDetailBottomSheet({
    required BuildContext context,
    required bool isEvent,
  }) {
    return Get.bottomSheet(
      GestureDetector(
        onTap: () {
          if (Get.isBottomSheetOpen!) Get.back();
          showBottomSheet(
            backgroundColor: Colors.transparent,
            context: Scaffold.of(context).context,
            builder: (context) {
              return EventDetailFullWidget(
                isEvent: isEvent,
              );
            },
          );
        },
        child: const EventDetailsWidget(),
      ),
    );
  }

  static dynamic showMoreOptionsBottonSheet({
    required BuildContext context,
  }) {
    return Get.bottomSheet(
      const MoreEventOptionsWidget(),
    );
  }
}
