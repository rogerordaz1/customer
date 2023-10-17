import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

import 'widgets.dart';

class CustomBottonNavBar extends StatelessWidget {
  const CustomBottonNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarItem(
              isSelected: true,
              // isSelected: navBarCubit.state.index == 0 ? true : false,
              iconData: TablerIcons.home,

              onPressed: () {},
              // onPressed: () => navBarCubit.updateIndexNavBar(0),
            ),
            NavBarItem(
              isSelected: false,
              iconData: TablerIcons.search,
              onPressed: () {},
            ),
            NavBarItem(
              isSelected: false,
              iconData: TablerIcons.ticket,
              onPressed: () {},
            ),
            NavBarItem(
              isSelected: false,
              isBell: true,
              iconData: TablerIcons.bell,
              onPressed: () {},
            ),
            NavBarItem(
              isSelected: false,
              iconData: TablerIcons.user_circle,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
