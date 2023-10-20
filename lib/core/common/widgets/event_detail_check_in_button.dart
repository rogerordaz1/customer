import 'package:app/core/common/widgets/custom_filled_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

class EventDetailCheckInButtonWidget extends StatelessWidget {
  const EventDetailCheckInButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    //TODO: Implementar los estilos en el tema.
    final style = ButtonStyle(
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

    return CustomFilledButton(
      iconData: TablerIcons.ticket,
      buttonText: "Reservar",
      onPressed: () {},
      style: style,
    );
  }
}
