import 'package:app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../../theme/app_colors.dart';

class EventLocationWidget extends StatelessWidget {
  const EventLocationWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 20.h,
          width: 20.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primary,
          ),
          child: Icon(
            TablerIcons.map_pin,
            size: 16.w,
            color: AppColors.dark0,
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.base.s10.w500.blackColor,
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Text(
              subtitle,
              style: AppTextStyles.base.s10.w400.dark500Color,
            )
          ],
        )
      ],
    );
  }
}
