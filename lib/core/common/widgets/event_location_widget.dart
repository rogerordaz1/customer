import 'package:app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../theme/app_colors.dart';

class EventLocationWidget extends StatelessWidget {
  const EventLocationWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 8.w,
      leading: Container(
        height: 32.h,
        width: 32.w,
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
      title: Text(title, style: AppTextStyles.base.w500),
      subtitle: subtitle != null
          ? Text(subtitle!, style: AppTextStyles.base.s11)
          : null,
    );
  }
}
