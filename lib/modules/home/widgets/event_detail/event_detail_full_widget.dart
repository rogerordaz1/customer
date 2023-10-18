import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [1, 2, 3, 4]
                        .map(
                          (item) => Container(
                            width: MediaQuery.of(context).size.width * 0.80,
                            margin: EdgeInsets.only(left: 10.w),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/image1.png'),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const EventTextName(title: 'Paisajes Sin Nombre'),
                      SizedBox(height: 12.h),
                      const AuthorImgAndName(
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
                      const CheckInButton(),
                      SizedBox(height: 16.h),
                      const AboutThisEventWidget(),
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