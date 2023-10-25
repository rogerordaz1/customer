import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/widgets.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
    required this.isEvent,
  });

  final bool isEvent;

  //?A este Widget se le debe pasar por parametros el EVENTO ..

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          height: 300.h,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                'assets/image1.png',
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(12.r),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          height: 210.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.r),
              bottomRight: Radius.circular(12.r),
            ),
            color: AppColors.dark0,
          ),
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EventTextName(
                  title:
                      'Festival Internacional del Nuevo Cine Latinoamericano'),
              const EventAuthorImgAndName(
                  authorImg: 'assets/image1.png', authorName: 'Enrique Casas'),
              SizedBox(
                height: 10.h,
              ),
              const EventLocationWidget(
                title: 'Multiples locaciones',
                subtitle: 'Ciudad de La Habana',
              ),
              const Spacer(),
              EventDateAndTimeWidget(isEvent: isEvent),
              const Spacer(),
              EventActionButtonWidget(isEvent: isEvent),
            ],
          ),
        ),
      ],
    );
  }
}
