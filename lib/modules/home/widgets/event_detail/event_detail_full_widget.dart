import 'package:app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/widgets.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets.dart';

class EventDetailFullWidget extends StatelessWidget {
  const EventDetailFullWidget({
    super.key,
    this.isEvent = true,
  });

  final bool isEvent;

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
                      EventDateAndTimeWidget(isEvent: isEvent),
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
                      SizedBox(height: 10.h),
                      if (isEvent == true) const ShowsInThisEventSection(),
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

class ShowsInThisEventSection extends StatelessWidget {
  const ShowsInThisEventSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Espectaculos de este Evento',
          style: TextStyle(
            color: const Color(0xFF1A1A1A),
            fontSize: 14.sp,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 300.h,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ShowCard();
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10.h,
              );
            },
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}

class ShowCard extends StatelessWidget {
  const ShowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6.r)),
                image: const DecorationImage(
                  image: AssetImage('assets/image1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 14.w,
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Vampiros en La Habana',
                    style: TextStyle(
                      color: const Color(0xFF1A1A1A),
                      fontSize: 14.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 35.h,
                  width: 95.w,
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                      color: AppColors.dark50,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: const DateAndTimeWidgetItem(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class EventDetailMapLocationSectionWidget extends StatelessWidget {
  const EventDetailMapLocationSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle style = AppTextStyles.base.s12.w500
        .copyWith(color: AppColors.compartirColorBlack);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ubicacion en el mapa',
          style: style,
        ),
        SizedBox(height: 16.h),
        const EventDetailMapLocationImageWidget(),
        SizedBox(height: 16.h),
      ],
    );
  }
}
