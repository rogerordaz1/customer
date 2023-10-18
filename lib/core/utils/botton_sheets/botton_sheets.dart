import 'package:app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../modules/home/widgets/widgets.dart';

class BottonSheets {
  static dynamic showEventDetailBottomSheet({required BuildContext context}) {
    return Get.bottomSheet(
      GestureDetector(
        onTap: () {
          Get.back();
          showBottomSheet(
            context: Scaffold.of(context).context,
            builder: (context) {
              return const EventDetailFullWidget();
            },
          );
        },
        child: const EventDetailsWidget(),
      ),
    );
  }
}

class EventDetailFullWidget extends StatelessWidget {
  const EventDetailFullWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.95,
      width: MediaQuery.sizeOf(context).height * 0.95,
      decoration: BoxDecoration(
        color: AppColors.dark100,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14.r),
          topRight: Radius.circular(14.r),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 6.h),
          const Center(child: DraggableIndicator()),
        ],
      ),
    );
  }
}
