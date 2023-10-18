import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';

class CustomLoginButtoms extends StatelessWidget {
  const CustomLoginButtoms({
    super.key,
    required this.hintext,
    required this.ispraimary,
  });

  final String hintext;
  final bool ispraimary;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 48.h,
          decoration: ispraimary
              ? ShapeDecoration(
                  color: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.r),
                  ))
              : ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2.w, color: AppColors.primary),
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                hintext,
                style: TextStyle(
                  color: ispraimary ? Colors.white : AppColors.primary,
                  fontSize: 14.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              ispraimary
                  ? Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    )
                  : Container()
            ],
          ),
        ),
      ],
    );
  }
}
