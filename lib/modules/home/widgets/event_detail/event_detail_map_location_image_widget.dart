import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

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
          child: CustomFilledButton(
            iconData: TablerIcons.map_2,
            buttonText: 'Ver en el Mapa',
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h)),
              backgroundColor:
                  const MaterialStatePropertyAll(Color(0xff0E6BF0)),
              alignment: Alignment.center,
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.r),
                ),
              ),
            ),
            textStyle: TextStyle(
              fontFamily: "Roboto",
              fontSize: 12.5.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}