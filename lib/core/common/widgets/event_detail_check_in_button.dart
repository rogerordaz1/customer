import 'package:app/core/common/widgets/custom_filled_button.dart';
import 'package:app/core/common/widgets/my_filled_button.dart';
import 'package:app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

class EventDetailCheckInButtonWidget extends StatelessWidget {
  const EventDetailCheckInButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyFilledButton(
      height: 35.h,
      iconData: TablerIcons.ticket,
      text: "Reservar",
      onPressed: () {},
      isDesingInverse: true,
      style: AppTextStyles.base.s14.w500.whiteColor,
    );
  }
}
