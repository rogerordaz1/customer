import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tabler_icons/tabler_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              showGeneralDialog(
                context: context,
                barrierDismissible: true,
                barrierColor: Colors.black.withOpacity(0.5),
                barrierLabel: 'Cerrar diálogo',
                transitionDuration: const Duration(milliseconds: 100),
                pageBuilder: (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
                  return const CustomFilter();
                },
              );
            },
            child: Stack(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Icon(
                    TablerIcons.menu_2,
                    size: 22.w,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 5,
                  child: Container(
                    height: 14.h,
                    width: 14.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Badge(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 90.w,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(238, 238, 238, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(20.r),
              ),
            ),
            child: Image.asset('assets/logo.png'),
          ),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}

class CustomFilter extends StatelessWidget {
  const CustomFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
            width: MediaQuery.of(context).size.width,
            height: 170.h,
            color: const Color.fromRGBO(255, 255, 255, 1),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: const DialogFilterHeader(),
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.only(right: 15.h, left: 15.h),
                  child: const FilterSearchWidget(),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 35.h,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 15.w),
                      const FilterPill(
                        text: 'Fecha',
                        iconData: TablerIcons.calendar_due,
                      ),
                      SizedBox(width: 8.w),
                      const FilterPill(
                        text: 'Categoria',
                        iconData: TablerIcons.category_2,
                      ),
                      SizedBox(width: 8.w),
                      const FilterPill(
                        text: 'Artista',
                        iconData: TablerIcons.palette,
                      ),
                      SizedBox(width: 8.w),
                      const FilterPill(
                        text: 'Artista',
                        iconData: TablerIcons.palette,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FilterPill extends StatelessWidget {
  const FilterPill({
    super.key,
    required this.text,
    required this.iconData,
  });

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(238, 238, 238, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(30.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(iconData),
          SizedBox(width: 8.w),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              letterSpacing: -1,
            ),
          ),
        ],
      ),
    );
  }
}

class FilterSearchWidget extends StatelessWidget {
  const FilterSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(238, 238, 238, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(30.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hinted search text',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontStyle: FontStyle.normal,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,
              letterSpacing: -1,
            ),
          ),
          Container(
            height: 30.h,
            width: 30.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Icon(
              TablerIcons.search,
              size: 18.w,
            ),
          ),
        ],
      ),
    );
  }
}

class DialogFilterHeader extends StatelessWidget {
  const DialogFilterHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(238, 238, 238, 1)),
                child: Icon(
                  TablerIcons.chevron_up,
                  size: 22.w,
                ),
              ),
            ),
            SizedBox(
              width: 6.w,
            ),
            Container(
              height: 30.h,
              width: 30.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(
                TablerIcons.map_pin,
                size: 22.w,
              ),
            ),
          ],
        ),
        Container(
          width: 90.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          child: Image.asset(
            'assets/logo.png',
          ),
        ),
        SizedBox(width: 76.w)
      ],
    );
  }
}
