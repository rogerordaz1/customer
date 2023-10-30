import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDateAndTimeWidget extends StatelessWidget {
  const EventDateAndTimeWidget({super.key, required this.isEvent});

  final bool isEvent;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            color: AppColors.dark50,
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
        if (!isEvent)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              color: AppColors.dark50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$50.00",
                  style: AppTextStyles.base.w500.primaryColor.s12,
                  textAlign: TextAlign.left,
                ),
                Text(
                  "/Entrada",
                  style: AppTextStyles.base.s10.w400.dark500Color,
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "16",
          style: AppTextStyles.base.s22.w400.primaryColor,
        ),
        SizedBox(width: 4.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Dic.", style: AppTextStyles.base.w500.s10),
            Text(
              "09:00pm",
              style: AppTextStyles.base.s10.w400.dark500Color,
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
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 4.w),
        width: 1.w,
        height: 23.h,
        color: const Color(0xffC1C1C1));
  }
}
