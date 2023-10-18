import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

class CheckInButton extends StatelessWidget {
  const CheckInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 28.w, vertical: 6.h)),
        backgroundColor: const MaterialStatePropertyAll(Color(0xff0E6BF0)),
        alignment: Alignment.center,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
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
    );
  }
}