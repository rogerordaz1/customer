import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/widgets.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets.dart';

class EventDetailFullWidget extends StatelessWidget {
  const EventDetailFullWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          height: MediaQuery.sizeOf(context).height * 0.95,
          // width: MediaQuery.sizeOf(context).height * 0.95,
          decoration: BoxDecoration(
            color: AppColors.dark0,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14.r),
              topRight: Radius.circular(14.r),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6.h),
                const Center(
                  child: DraggableIndicator(),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  height: 280.h,
                  child: const EventDetailImagesSectionWidget(),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const EventTextName(title: 'Paisajes Sin Nombre'),
                      SizedBox(height: 12.h),
                      const EventAuthorImgAndName(
                        authorImg: 'assets/image1.png',
                        authorName: 'Enrique Casas',
                        isIconShowing: false,
                      ),
                      SizedBox(height: 12.h),
                      const EventDateAndTimeWidget(),
                      SizedBox(height: 12.h),
                      const EventLocationWidget(
                        title: 'Galería Collage Habana',
                        subtitle: 'San Rafael No.103 e/ Consulado e Industria',
                      ),
                      SizedBox(height: 12.h),
                      const EventDetailCheckInButtonWidget(),
                      SizedBox(height: 16.h),
                      const EventDetailAboutThisEventWidget(),
                      SizedBox(height: 10.h),
                      const EventDetailMapLocationSectionWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class EventDetailMapLocationSectionWidget extends StatelessWidget {
  const EventDetailMapLocationSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Ubicacion en el mapa',
          style: TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 14,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 16.h),
        const EventDetailMapLocationImageWidget(),
        SizedBox(height: 16.h),
      ],
    );
  }
}
