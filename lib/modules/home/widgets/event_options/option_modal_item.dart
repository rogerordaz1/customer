import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_theme.dart';

class OptionModalItemWidget extends StatelessWidget {
  const OptionModalItemWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconData,
    this.onPressed,
  });

  final String title;
  final String subtitle;
  final IconData iconData;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: AppColors.dark0,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 35.h,
              width: 35.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
              ),
              child: Icon(
                iconData,
                size: 25.w,
                color: AppColors.dark0,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.base.s14.w500.blackColor,
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.base.w400
                        .copyWith(fontSize: 11.sp)
                        .copyWith(
                          color: const Color(0xFF232323),
                        ),
                  )
                ],
              ),
            )
          ],
        ),

        //?? Con la listTile no me salio...
        //ListTile(
        //   onTap: onPressed,
        //   contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
        //   horizontalTitleGap: 8.w,
        //   leading: Container(
        //     height: 35.h,
        //     width: 35.w,
        //     decoration: const BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: AppColors.primary,
        //     ),
        //     child: Icon(
        //       iconData,
        //       size: 25.w,
        //       color: AppColors.dark0,
        //     ),
        //   ),
        //   title: Text(
        //     title,
        //     style: AppTextStyles.base.s14.w500
        //         .copyWith(color: const Color(0xFF232323)),
        //   ),
        //   subtitle: Text(
        //     subtitle,
        //     style: AppTextStyles.base.w400
        //         .copyWith(fontSize: 11.sp)
        //         .copyWith(color: const Color(0xFF232323)),
        //   ),
        // ),
      ),
    );
  }
}
