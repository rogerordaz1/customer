import 'package:app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_colors.dart';

class EventTextName extends StatelessWidget {
  const EventTextName({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final style = AppTextStyles.base.s14.w500
        .copyWith(color: AppColors.compartirColorBlack);

    return Text(
      title,
      style: style,
      overflow: TextOverflow.ellipsis,
    );
  }
}
