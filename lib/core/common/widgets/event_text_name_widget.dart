import 'package:flutter/material.dart';
import 'package:app/core/theme/themes.dart';

class EventTextName extends StatelessWidget {
  const EventTextName({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final style = AppTextStyles.base.s14.w500
        .copyWith(color: AppColors.compartirColorBlack);

    return Text(
      title,
      style: style,
      overflow: TextOverflow.ellipsis,
    );
  }
}
