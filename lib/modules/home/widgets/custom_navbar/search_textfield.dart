import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../../../core/theme/themes.dart';

class FilterSearchWidget extends StatelessWidget {
  const FilterSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(238, 238, 238, 1),
          borderRadius: BorderRadius.circular(30.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Buscar eventos',
              style: AppTextStyles.base.s16.copyWith(
                  decoration: TextDecoration.none, color: AppColors.black)),
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
