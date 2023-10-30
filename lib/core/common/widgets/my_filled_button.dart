import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_theme.dart';

class MyFilledButton extends StatelessWidget {
  const MyFilledButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.iconData,
    this.colors,
    this.isDesingInverse = false,
    this.textColor = AppColors.white,
    this.style,
    this.padding,
    this.height,
  });
  final VoidCallback? onPressed;
  final IconData? iconData;
  final List<Color>? colors;
  final String text;
  final bool isDesingInverse;
  final Color textColor;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 35.h,
        // padding:
        //     padding ?? EdgeInsets.symmetric(vertical: 10.h, horizontal: 6.w),
        decoration: BoxDecoration(
          color: onPressed == null ? AppColors.dark200 : null,
          borderRadius: BorderRadius.circular(30.r),
          gradient: onPressed != null
              ? LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: colors ??
                      [AppColors.primary, AppColors.secondGradientBlue],
                )
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isDesingInverse && iconData != null) ...[
                  iconData != null
                      ? Icon(iconData, color: textColor)
                      : const SizedBox.shrink(),
                ],
                SizedBox(width: 8.w),
                Flexible(
                  child: Text(text,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          AppTextStyles.base.w600.copyWith(color: textColor)),
                ),
                if (!isDesingInverse && iconData != null) ...[
                  SizedBox(width: 8.w),
                  iconData != null
                      ? Icon(iconData, color: textColor)
                      : const SizedBox.shrink(),
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
