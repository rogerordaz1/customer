import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common/widgets/widgets.dart';

import '../widgets.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.isEvent});

  final bool isEvent;

  //?A este Widget se le debe pasar por parametros el EVENTO ..

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 0.86,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
              child: Image.asset(
                'assets/image1.png',
                fit: BoxFit.none,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const EventTextName(
                    title:
                        'Festival Internacional del Nuevo Cine Latinoamericano'),
                const EventAuthorImgAndName(
                    authorImg: 'assets/image1.png',
                    authorName: 'Enrique Casas'),
                const EventLocationWidget(
                  title: 'Multiples locaciones',
                  subtitle: 'Ciudad de La Habana',
                ),
                EventDateAndTimeWidget(isEvent: isEvent),
                SizedBox(height: 8.h),
                EventActionButtonWidget(isEvent: isEvent),
              ],
            ),
          )
        ],
      ),
    );
  }
}
