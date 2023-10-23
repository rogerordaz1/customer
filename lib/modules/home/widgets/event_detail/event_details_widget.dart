import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/widgets.dart';
import '../widgets.dart';

class EventDetailsWidget extends StatelessWidget {
  const EventDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.h,
      // width: 300.w,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14.r),
          topRight: Radius.circular(14.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.h),
          const Center(child: DraggableIndicator()),
          SizedBox(height: 6.h),
          const EventTextName(title: 'Paisajes Sin Nombre'),
          SizedBox(height: 12.h),
          const EventAuthorImgAndName(
            authorImg: 'assets/image1.png',
            authorName: 'Enrique Casas',
            isIconShowing: false,
          ),
          SizedBox(height: 12.h),
          const EventDateAndTimeWidget(isEvent: false),
          SizedBox(height: 12.h),
          const EventLocationWidget(
            title: 'Galería Collage Habana',
            subtitle: 'San Rafael No.103 e/ Consulado e Industria',
          ),
          SizedBox(height: 12.h),
          const Expanded(child: EventDetailDescriptionWidget()),
          SizedBox(height: 6.h),
          const EventDetailCheckInButtonWidget(),
          SizedBox(height: 12.h),
        ],
      ),
    );
  }
}
