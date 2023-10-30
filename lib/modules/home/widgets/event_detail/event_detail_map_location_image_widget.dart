import 'package:app/core/common/widgets/my_filled_button.dart';
import 'package:app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../../../core/common/widgets/widgets.dart';

class EventDetailMapLocationImageWidget extends StatelessWidget {
  const EventDetailMapLocationImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: 200.h,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/mapa.png"),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.r),
          height: 35.h,
          width: 150.w,
          child: MyFilledButton(
            onPressed: () {},
            text: 'Ver en el Mapa',
            iconData: TablerIcons.map_2,
            style: AppTextStyles.base.s12.w500.whiteColor,
            isDesingInverse: true,
          ),
        )
      ],
    );
  }
}
