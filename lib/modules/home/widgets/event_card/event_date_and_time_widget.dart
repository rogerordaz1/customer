import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDateAndTimeWidget extends StatelessWidget {
  const EventDateAndTimeWidget({
    super.key,
    required this.isEvent,
  });

  final bool isEvent;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          width: 175.w,
          height: 35.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            color: const Color.fromRGBO(238, 238, 238, 1),
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DateAndTimeWidgetItem(),
              ItemBreaker(),
              DateAndTimeWidgetItem(),
            ],
          ),
        ),
        if (isEvent == false)
          Container(
            width: 50.w,
            height: 35.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              color: const Color.fromRGBO(238, 238, 238, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$50.00",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "/Entrada",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff848484),
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}

class DateAndTimeWidgetItem extends StatelessWidget {
  const DateAndTimeWidgetItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "16",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 26.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff0e6bf0),
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(width: 8.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dic.",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "09:00pm",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff848484),
              ),
              textAlign: TextAlign.left,
            )
          ],
        )
      ],
    );
  }
}

class ItemBreaker extends StatelessWidget {
  const ItemBreaker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 1.w, height: 23.h, color: const Color(0xffC1C1C1));
  }
}
