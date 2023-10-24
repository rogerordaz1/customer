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
    this.isBackButton,
    this.iconSize,
    this.isDesingInverse = false,
  });

  final IconData? iconData;
  final String buttonText;
  final VoidCallback? onPressed;
  final ButtonStyle style;
  final TextStyle? textStyle;
  final bool? isBackButton;
  final double? iconSize;
  final bool? isDesingInverse;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: style,
      onPressed: onPressed,
      child: isDesingInverse == false
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (iconData != null)
                  Icon(
                    iconData,
                    size: iconSize ?? 19.h,
                  ),
                isBackButton == null
                    ? SizedBox(
                        width: 8.w,
                      )
                    : SizedBox(
                        width: 5.w,
                      ),
                Text(
                  buttonText,
                  style: textStyle ??
                      TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                isBackButton == null
                    ? const SizedBox.shrink()
                    : SizedBox(
                        width: 5.w,
                      ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  buttonText,
                  style: textStyle ??
                      TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                isBackButton == null
                    ? const SizedBox.shrink()
                    : SizedBox(
                        width: 5.w,
                      ),
                isBackButton == null
                    ? SizedBox(
                        width: 8.w,
                      )
                    : SizedBox(
                        width: 5.w,
                      ),
                if (iconData != null)
                  Icon(
                    iconData,
                    size: iconSize ?? 19.h,
                  ),
              ],
            ),
    );
  }
}
