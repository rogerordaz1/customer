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
      bodySmall: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w200,
      ),
      headlineLarge: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
