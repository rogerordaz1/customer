import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:tabler_icons/tabler_icons.dart';

import '../../theme/app_colors.dart';
import 'widgets.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: CustomFilledButton(
        iconData: TablerIcons.chevron_left,
        buttonText: 'Volver',
        iconSize: 20.h,
        style: Theme.of(context).filledButtonTheme.style!,
        onPressed: () => Get.back(),
        textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppColors.dark0,
            ),
        isDesingInverse: true,
      ),
    );
  }
}
