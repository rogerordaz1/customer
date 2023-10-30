import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.iconData,
    this.isSelected,
    required this.onPressed,
    this.isBell = false,
  });
  final IconData iconData;
  final bool? isSelected;
  final bool? isBell;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return isSelected == true
        ? Container(
            height: 42.h,
            width: 42.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: isBell == false
                ? Icon(
                    iconData,
                    size: 22.w,
                    color: const Color(0xff232323),
                  )
                : CustomBadge(
                    iconData: iconData,
                    isSelected: isSelected!,
                  ),
          )
        : InkWell(
            onTap: onPressed,
            child: SizedBox(
              height: 42.h,
              width: 42.w,
              child: isBell == false
                  ? Icon(
                      iconData,
                      size: 22.w,
                      color: Colors.white,
                    )
                  : CustomBadge(
                      iconData: iconData,
                      isSelected: isSelected!,
                    ),
            ),
          );
  }
}

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
    required this.iconData,
    required this.isSelected,
  });

  final IconData iconData;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Icon(
            iconData,
            size: 22.w,
            color: isSelected == false ? Colors.white : const Color(0xff232323),
          ),
          Positioned(
            right: 0,
            top: 3,
            child: Container(
              height: 10.h,
              width: 10.w,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  shape: BoxShape.circle),
              child: const Badge(),
            ),
          ),
        ],
      ),
    );
  }
}
