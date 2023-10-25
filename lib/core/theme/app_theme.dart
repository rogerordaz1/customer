import 'package:app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData buildThemeData() {
  // const fontFamily100 = 'MuseoSans-100';
  // const fontFamily500 = 'MuseoSans-500';
  // const fontFamily700 = 'MuseoSans-700';
  // const fontFamily300 = 'MuseoSans-300';

  return ThemeData(
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primary,
      background: AppColors.dark50,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(4),
        textStyle: const MaterialStatePropertyAll(
          TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        ),
        alignment: Alignment.center,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        ),
        foregroundColor: const MaterialStatePropertyAll(AppColors.primary),
        side: MaterialStatePropertyAll(
            BorderSide(color: AppColors.primary, width: 2.w)),
        alignment: Alignment.center,
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
      ),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w300,
      ),
      headlineMedium: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w300,
      ),
      bodySmall: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w200,
      ),
      headlineLarge: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
