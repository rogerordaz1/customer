import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintext,
  });

  final String hintext;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFDADADA)),
          borderRadius: BorderRadius.circular(25.r),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 12.h),
          hintText: hintext,
          hintStyle: const TextStyle(
            color: Color(0xFFA2A2A2),
            fontSize: 14,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
