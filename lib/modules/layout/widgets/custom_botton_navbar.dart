import 'package:app/modules/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

import 'widgets.dart';

class CustomBottonNavBar extends StatelessWidget {
  const CustomBottonNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LayoutController>();
    return Container(
      height: 45.h,
      margin: EdgeInsets.only(bottom: 5.h),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff0E6BF0),
            Color(0xff0A49A3),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(40.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarItem(
                isSelected: controller.layoutState.value.selectedIndex == 0
                    ? true
                    : false,
                // isSelected: navBarCubit.state.index == 0 ? true : false,
                iconData: TablerIcons.compass,

                onPressed: () => controller.updateSelectedIndex(0),
                // onPressed: () => navBarCubit.updateIndexNavBar(0),
              ),
              NavBarItem(
                isSelected: controller.layoutState.value.selectedIndex == 1
                    ? true
                    : false,
                iconData: TablerIcons.search,
                onPressed: () => controller.updateSelectedIndex(1),
              ),
              NavBarItem(
                isSelected: controller.layoutState.value.selectedIndex == 2
                    ? true
                    : false,
                iconData: TablerIcons.ticket,
                onPressed: () => controller.updateSelectedIndex(2),
              ),
              NavBarItem(
                isSelected: controller.layoutState.value.selectedIndex == 3
                    ? true
                    : false,
                isBell: true,
                iconData: TablerIcons.bell,
                onPressed: () => controller.updateSelectedIndex(3),
              ),
              NavBarItem(
                isSelected: controller.layoutState.value.selectedIndex == 4
                    ? true
                    : false,
                iconData: TablerIcons.settings,
                onPressed: () => controller.updateSelectedIndex(4),
              ),
            ],
          );
        }),
      ),
    );
  }
}
