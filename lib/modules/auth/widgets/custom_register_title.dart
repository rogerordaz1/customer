import 'package:app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRegisterTitles extends StatelessWidget {
  final String text;
  final bool isSubtitle;

  const CustomRegisterTitles({
    super.key,
    required this.text,
    required this.isSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: isSubtitle ? TextAlign.center : TextAlign.left,
      style: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontWeight: isSubtitle ? FontWeight.w500 : FontWeight.w400,
            fontSize: isSubtitle ? 12.sp : 25.sp,
            color: AppColors.dark900,
            
          ),
    );
  }
}
