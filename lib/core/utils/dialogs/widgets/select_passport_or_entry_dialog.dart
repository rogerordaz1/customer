import 'package:app/modules/home/routes/home_routes.dart';
import 'package:flutter/material.dart';
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
        style: Theme.of(context)
            .textTheme
            .headlineLarge!
            .copyWith(color: AppColors.dark900, fontWeight: FontWeight.w400),
      ),
      content: SizedBox(
        height: 40.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Usted tiene la posibilidad de adquirir una o varias entradas para los espectáculos asociados a este evento.',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.dark900,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25,
                    fontSize: 10.2.sp,
                  ),
            )
          ],
        ),
      ),
      actionsPadding: pading,
      actions: [
        CustomOutlineButton(
          iconData: null,
          buttonText: 'Una entrada',
          onPressed: () {
            Get.back();
            Get.toNamed("${HomeRoutes.home}${HomeRoutes.showList}");
          },
          style: Theme.of(context).outlinedButtonTheme.style!,
        ),
        CustomFilledButton(
          iconData: null,
          buttonText: 'Un Pasaporte',
          onPressed: () {},
          style: Theme.of(context).filledButtonTheme.style!,
        ),
      ],
    );
  }
}
