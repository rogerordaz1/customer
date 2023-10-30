import 'package:app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    this.iconData,
    required this.buttonText,
    required this.onPressed,
    required this.style,
  });

  final IconData? iconData;
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
          if (iconData != null)
            Icon(
              iconData,
              size: 19.h,
            ),
          SizedBox(width: 8.w),
          Text(
            buttonText,
            textAlign: TextAlign.center,
            style: AppTextStyles.base.s12.w500.primaryColor,
          )
        ],
      ),
    );
  }
}
