import 'package:flutter/material.dart';
import 'package:app/core/theme/app_text_theme.dart';
import 'package:app/modules/home/routes/home_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/widgets/widgets.dart';
import '../../../theme/app_colors.dart';

class SelectPassportOrEntryDialog extends StatelessWidget {
  const SelectPassportOrEntryDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pading = EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h);

    return AlertDialog(
      contentPadding: pading,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.r))),
      title: Text(
        '¿Qué desea reservar?',
        style: AppTextStyles.base.s22.w400.copyWith(color: AppColors.dark900),
      ),
      content: SizedBox(
        height: 60.h,
        child: Text(
          'Usted tiene la posibilidad de adquirir una, varias entradas o un pasaporte para los espectáculos asociados a este evento. ',
          style: AppTextStyles.base.w400
              .copyWith(fontSize: 12.sp)
              .copyWith(color: AppColors.dark900, letterSpacing: 0.25),
        ),
      ),
      actionsPadding: pading,
      actions: [
        SizedBox(
          height: 30.h,
          child: CustomOutlineButton(
            buttonText: 'Una entrada',
            onPressed: () {
              if (Get.isDialogOpen!) Get.back();
              Get.toNamed("${HomeRoutes.home}${HomeRoutes.showList}");
            },
            style: Theme.of(context).outlinedButtonTheme.style!,
          ),
        ),
        SizedBox(height: 6.h),
        MyFilledButton(
          text: '     Un Pasaporte',
          style: AppTextStyles.base.s12.whiteColor.w500,
          height: 30.h,
          onPressed: () {},
        ),
      ],
    );
  }
}
