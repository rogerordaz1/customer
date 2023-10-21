import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton(
      {super.key,
      required this.iconData,
      required this.buttonText,
      required this.onPressed,
      required this.style});

  final IconData iconData;
  final String buttonText;
  final VoidCallback onPressed;
  final ButtonStyle style;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: style,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 20.h,
          ),
          SizedBox(width: 8.w),
          Text(
            buttonText,
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff0e6bf0),
            ),
          )
        ],
      ),
    );
  }
}
