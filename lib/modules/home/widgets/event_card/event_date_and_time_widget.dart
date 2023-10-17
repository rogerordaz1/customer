import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDateAndTimeWidget extends StatelessWidget {
  const EventDateAndTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          width: 175.w,
          height: 30.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromRGBO(238, 238, 238, 1),
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
        Container(
          width: 50.w,
          height: 30.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromRGBO(238, 238, 238, 1),
          ),
          child: const Column(
            children: [
              Text(
                "\$50.00",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0e6bf0),
                  height: 20 / 14,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                "/Entrada",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff848484),
                  height: 16 / 12,
                ),
                textAlign: TextAlign.left,
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
        const Text(
          "16",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 28,
            fontWeight: FontWeight.w400,
            color: Color(0xff0e6bf0),
            height: 36 / 28,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(width: 8.w),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dic.",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
                height: 16 / 12,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "09:00pm",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff848484),
                height: 16 / 12,
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
