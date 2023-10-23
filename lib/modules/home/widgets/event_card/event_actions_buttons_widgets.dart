import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/utils/botton_sheets/botton_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tabler_icons/tabler_icons.dart';

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

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomOutlineButton(
            buttonText: "Ver detalles",
            iconData: TablerIcons.eye,
            style: Theme.of(context)
                .outlinedButtonTheme
                .style!
                .copyWith(padding: outlineBtnPadding),
            onPressed: () => BottonSheets.showEventDetailBottomSheet(
                context: context, isEvent: isEvent),
          ),
        ),
        SizedBox(width: 18.w),
        Expanded(
          child: CustomFilledButton(
            buttonText: "Reservar",
            iconData: TablerIcons.ticket,
            onPressed: () => isEvent ? CustomDialogs.showSelectDialog() : {},
            style: Theme.of(context).filledButtonTheme.style!.copyWith(
                  backgroundColor: isEvent == true
                      ? const MaterialStatePropertyAll(Color(0xFFEC5E20))
                      : MaterialStatePropertyAll(AppColors.primary),
                ),
          ),
        )
      ],
    );
  }
}
