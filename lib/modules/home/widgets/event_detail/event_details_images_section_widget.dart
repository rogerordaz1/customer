import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDetailImagesSectionWidget extends StatelessWidget {
  const EventDetailImagesSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [1, 2, 3, 4]
          .map(
            (item) => Container(
              width: MediaQuery.of(context).size.width * 0.80,
              margin: EdgeInsets.only(left: 10.w),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/image1.png'),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}