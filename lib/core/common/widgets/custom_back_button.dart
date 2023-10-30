import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:app/core/theme/themes.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
        style: FilledButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(8, 4, 16, 8)),
        onPressed: () => Get.back(),
        icon: const Icon(TablerIcons.chevron_left, color: AppColors.white),
        label: Text('Volver', style: AppTextStyles.base.s14.w500));
  }
}
