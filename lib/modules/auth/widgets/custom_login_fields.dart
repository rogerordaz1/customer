import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintext,
  });

  final String hintext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.5.h),
      decoration: ShapeDecoration(
        color: AppColors.dark0,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColors.dark100),
          borderRadius: BorderRadius.circular(25.r),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintext,
          hintStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: AppColors.dark300,
                fontWeight: FontWeight.w400,
              ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
