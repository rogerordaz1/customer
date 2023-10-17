
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
  });

  //?A este Widget se le debe pasar por parametros el EVENTO ..

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          height: 300.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/image1.png',
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          height: 190.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: Colors.white,
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EventTextName(title: 'Paisajes sin nombre'),
              SizedBox(height: 5.h),
              const AuthorImgAndName(
                  authorImg: 'assets/image1.png', authorName: 'Enrique Casas'),
              SizedBox(height: 10.h),
              const EventLocationWidget(
                title: 'Multiples locaciones',
                subtitle: 'Ciudad de La Habana',
              ),
              SizedBox(height: 10.h),
              const EventDateAndTimeWidget(),
              SizedBox(height: 10.h),
              const EventActionButtonWidget()
            ],
          ),
        ),
      ],
    );
  }
}


