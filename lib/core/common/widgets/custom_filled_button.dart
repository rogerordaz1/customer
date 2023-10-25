import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_text_theme.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.iconData,
    required this.buttonText,
    required this.onPressed,
    required this.style,
    this.textStyle,
    this.iconSize,
    this.isDesingInverse = false,
  });

  final IconData? iconData;
  final String buttonText;
  final VoidCallback? onPressed;
  final ButtonStyle style;
  final TextStyle? textStyle;

  final double? iconSize;
  final bool? isDesingInverse;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: style,
      onPressed: onPressed,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isDesingInverse! == true) ...[
            Icon(iconData),
            SizedBox(width: 8.w),
          ],
          Flexible(
            child: Text(
              buttonText,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: textStyle ?? AppTextStyles.base.w500,
            ),
          ),
          if (isDesingInverse! == false) ...[
            SizedBox(width: 8.w),
            Icon(iconData),
          ]
        ],
      ),
    );
  }
}
