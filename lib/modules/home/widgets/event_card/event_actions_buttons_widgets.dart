import 'package:app/core/utils/botton_sheets/botton_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tabler_icons/tabler_icons.dart';

class EventActionButtonWidget extends StatelessWidget {
  const EventActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final styleOutlineButton = ButtonStyle(
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h),
      ),
      foregroundColor: const MaterialStatePropertyAll(Color(0xff0E6BF0)),
      side: const MaterialStatePropertyAll(
          BorderSide(color: Color(0xff0E6BF0), width: 2)),
      alignment: Alignment.center,
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );

    final styleFilledButton = ButtonStyle(
      padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 28.w, vertical: 6.h)),
      backgroundColor: const MaterialStatePropertyAll(Color(0xff0E6BF0)),
      alignment: Alignment.center,
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
          style: styleOutlineButton,
          onPressed: () =>
              BottonSheets.showEventDetailBottomSheet(context: context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(TablerIcons.eye),
              SizedBox(
                width: 8.w,
              ),
              const Text(
                "Ver detalles",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0e6bf0),
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
        FilledButton(
          style: styleFilledButton,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(TablerIcons.ticket),
              SizedBox(
                width: 8.w,
              ),
              const Text(
                "Reservar",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        )
      ],
    );
  }
}
