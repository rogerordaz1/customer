import 'package:app/core/utils/botton_sheets/botton_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tabler_icons/tabler_icons.dart';

import '../../../../core/common/widgets/widgets.dart';

class EventActionButtonWidget extends StatelessWidget {
  const EventActionButtonWidget({
    super.key,
    required this.isEvent,
  });

  final bool isEvent;

  @override
  Widget build(BuildContext context) {
    final styleOutlineButton = ButtonStyle(
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      ),
      foregroundColor: const MaterialStatePropertyAll(Color(0xff0E6BF0)),
      side: MaterialStatePropertyAll(
          BorderSide(color: const Color(0xff0E6BF0), width: 2.w)),
      alignment: Alignment.center,
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );

    final styleEventFilledButton = ButtonStyle(
      padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h)),
      backgroundColor: const MaterialStatePropertyAll(Color(0xFFEC5E20)),
      alignment: Alignment.center,
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
    final styleEspectaculoFilledButton = ButtonStyle(
      padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h)),
      backgroundColor: const MaterialStatePropertyAll(Color(0xff0e6bf0)),
      alignment: Alignment.center,
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: CustomOutlineButton(
          buttonText: "Ver detalles",
          iconData: TablerIcons.eye,
          style: styleOutlineButton,
          onPressed: () => BottonSheets.showEventDetailBottomSheet(
              context: context, isEvent: isEvent),
        )),
        SizedBox(width: 18.w),
        Expanded(
            child: CustomFilledButton(
          buttonText: "Reservar",
          iconData: TablerIcons.ticket,
          onPressed: () {},
          style: isEvent == true
              ? styleEventFilledButton
              : styleEspectaculoFilledButton,
        ))
      ],
    );
  }
}
