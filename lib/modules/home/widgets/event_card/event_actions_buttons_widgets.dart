import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/theme/app_text_theme.dart';
import 'package:app/core/utils/botton_sheets/botton_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';

import '../../../../core/common/widgets/widgets.dart';
import '../../../../core/utils/dialogs/dialogs.dart';

class EventActionButtonWidget extends StatelessWidget {
  const EventActionButtonWidget({
    super.key,
    required this.isEvent,
  });

  final bool isEvent;

  @override
  Widget build(BuildContext context) {
    final outlineBtnPadding = MaterialStatePropertyAll(
      EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
    );

    return SizedBox(
      height: 30.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: CustomOutlineButton(
              buttonText: "Ver detalles",
              iconData: TablerIcons.eye,
              style: Theme.of(context)
                  .outlinedButtonTheme
                  .style!
                  .copyWith(padding: outlineBtnPadding),
              onPressed: () {
                Get.bottomSheet(
                  AppDraggable(isEvent: isEvent),
                  isScrollControlled: true,
                  barrierColor: Colors.black.withOpacity(.5),
                );
                // BottonSheets.showEventDetailBottomSheet(
                //     context: context, isEvent: isEvent);
              },
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: MyFilledButton(
              text: "Reservar",
              style: AppTextStyles.base.s14.whiteColor.w500,
              iconData: TablerIcons.ticket,
              onPressed: () => isEvent ? CustomDialogs.showSelectDialog() : {},
              colors: isEvent == false
                  ? [
                      AppColors.primary,
                      AppColors.secondGradientBlue,
                    ]
                  : [
                      AppColors.firstGradientOrange,
                      AppColors.secondGradientOrange,
                    ],
              isDesingInverse: true,
            ),
          )
        ],
      ),
    );
  }
}
