import 'package:app/core/theme/themes.dart';
import 'package:app/core/utils/dialogs/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FilterPill extends StatefulWidget {
  const FilterPill({
    super.key,
    required this.text,
    required this.iconData,
    this.bgColor = AppColors.dark50,
  });

  final String text;
  final IconData iconData;
  final Color bgColor;

  @override
  State<FilterPill> createState() => _FilterPillState();
}

class _FilterPillState extends State<FilterPill> {
  final isActive = false.obs;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.text == 'Fecha') {
          CustomDialogs.filterDateRange();
        }
        if (widget.text == 'Categoria') {
          CustomDialogs.filterCategory();
        }
        if (widget.text == 'Artista') {
          CustomDialogs.filterArtist();
        }
        if (widget.text == 'Lugar') {
          CustomDialogs.filterPlace();
        }
        print("\\${widget.text.toLowerCase()}");
        isActive.toggle();
      },
      child: Obx(() => Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            decoration: BoxDecoration(
              color: isActive.value ? AppColors.primary : widget.bgColor,
              borderRadius: BorderRadius.all(
                Radius.circular(30.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  widget.iconData,
                  color: isActive.value ? AppColors.white : AppColors.dark900,
                ),
                SizedBox(width: 8.w),
                Text(
                  widget.text,
                  style: AppTextStyles.base.s14.w500.copyWith(
                    color: isActive.value ? AppColors.white : AppColors.dark900,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
