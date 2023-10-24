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
      decoration: ShapeDecoration(
        color: AppColors.dark0,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColors.dark100),
          borderRadius: BorderRadius.circular(25.r),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 16.w,
          ),
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
