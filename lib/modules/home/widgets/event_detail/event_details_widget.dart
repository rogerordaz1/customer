import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../widgets.dart';

class EventDetailsWidget extends StatelessWidget {
  const EventDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
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
          Text(
            "Paisajes sin Nombre es el título de la exposición personal del artista matancero Enrique Casas. Con curaduría de Meira Marrero, la muestra propone una serie de paisajes al óleo, con vistas de la ciudad de Matanzas, al occidente del país, en las que el artista ofrece la impresión visual de atrapar la luz y el instante.",
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 12.5.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff666666),
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 12.h),
          const CheckInButton(),
        ],
      ),
    );
  }
}


