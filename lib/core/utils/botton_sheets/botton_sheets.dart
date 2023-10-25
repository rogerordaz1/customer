import 'package:app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../../../modules/home/widgets/widgets.dart';
import '../../common/widgets/draggable_indicator.dart';
import '../../theme/app_colors.dart';

class BottonSheets {
  BottonSheets._();

  static dynamic showEventDetailBottomSheet({
    required BuildContext context,
    required bool isEvent,
  }) {
    return Get.bottomSheet(
      GestureDetector(
        onTap: () {
          Get.back();
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




