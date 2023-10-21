import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.iconData,
    required this.buttonText,
    required this.onPressed,
    required this.style,
    this.textStyle,
  });

  final IconData iconData;
  final String buttonText;
  final VoidCallback onPressed;
  final ButtonStyle style;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: style,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 20.h,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            buttonText,
            style: textStyle ??
                TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
          )
        ],
      ),
    );
  }
}
