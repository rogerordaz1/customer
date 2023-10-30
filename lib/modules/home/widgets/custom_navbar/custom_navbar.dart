import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../../../core/theme/app_colors.dart';
import '../widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
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
                transitionDuration: const Duration(milliseconds: 200),
                transitionBuilder: (_, animation, __, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: Transform(
                        transform: Matrix4.translationValues(
                          0.0,
                          30 * -(1.0 - animation.value),
                          0.0,
                        ),
                        child: child),
                  );
                },
                pageBuilder: (_, animation, __) => const CustomFilter(),
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
                    height: 12.h,
                    width: 12.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Badge(
                      backgroundColor: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 85.w,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.h),
            decoration: BoxDecoration(
              color: AppColors.dark50,
              borderRadius: BorderRadius.all(Radius.circular(20.r)),
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
  const CustomFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, IconData> map = {
      'Fecha': TablerIcons.calendar_due,
      'Categoria': TablerIcons.category_2,
      'Artista': TablerIcons.palette,
      'Lugar': TablerIcons.plane,
    };

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
            height: 165.h,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: const DialogFilterHeader(),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 15.h, left: 15.h),
                  child: const FilterSearchWidget(),
                ),
                const Spacer(),
                SizedBox(
                  height: 35.h,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      map.length,
                      (index) => Padding(
                        padding:
                            EdgeInsets.only(left: index == 0 ? 16.w : 10.w),
                        child: FilterPill(
                          text: map.keys.elementAt(index),
                          iconData: map.values.elementAt(index),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
                  color: AppColors.dark50,
                ),
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
