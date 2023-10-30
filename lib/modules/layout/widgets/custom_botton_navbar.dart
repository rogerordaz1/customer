import 'package:app/modules/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'widgets.dart';

class CustomBottonNavBar extends GetView<LayoutController> {
  const CustomBottonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
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
        borderRadius: BorderRadius.all(Radius.circular(40.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Obx(() {
          final isSelect = controller.layoutState.value.selectedIndex;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarItem(
                isSelected: isSelect == 0,
                iconData: TablerIcons.compass,
                onPressed: () => controller.updateSelectedIndex(0),
              ),
              NavBarItem(
                isSelected: isSelect == 1,
                iconData: TablerIcons.search,
                onPressed: () => controller.updateSelectedIndex(1),
              ),
              NavBarItem(
                isSelected: isSelect == 2,
                iconData: TablerIcons.ticket,
                onPressed: () => controller.updateSelectedIndex(2),
              ),
              NavBarItem(
                isSelected: isSelect == 3,
                isBell: true,
                iconData: TablerIcons.bell,
                onPressed: () => controller.updateSelectedIndex(3),
              ),
              NavBarItem(
                isSelected: isSelect == 4,
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
