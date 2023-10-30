import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemes {
  AppThemes._();

  // static final ThemeData themeData = ThemeData(
  //   useMaterial3: true,
  //   colorSchemeSeed: AppColors.primary,
  //   visualDensity: VisualDensity.adaptivePlatformDensity,
  //   scaffoldBackgroundColor: AppColors.dark50,
  //   iconTheme: IconThemeData(size: 22.w, color: AppColors.black),
  //   cardTheme: CardTheme(
  //     elevation: 0,
  //     surfaceTintColor: Colors.white,
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
  //   ),
  //   datePickerTheme: DatePickerThemeData(
  //     backgroundColor: Colors.white,
  //     elevation: 0,
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
  //   ),
  //   dialogTheme: DialogTheme(
  //     surfaceTintColor: AppColors.white,
  //     elevation: 0,
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
  //   ),
  //   elevatedButtonTheme: ElevatedButtonThemeData(
  //     style: ElevatedButton.styleFrom(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(25),
  //       ),
  //       elevation: 4,
  //       textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
  //     ),
  //   ),
  //   filledButtonTheme: FilledButtonThemeData(
  //       style: FilledButton.styleFrom(
  //     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  //     alignment: Alignment.center,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(20.r),
  //     ),
  //   )),
  //   outlinedButtonTheme: OutlinedButtonThemeData(
  //       style: OutlinedButton.styleFrom(
  //     padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
  //     foregroundColor: AppColors.primary,
  //     side: BorderSide(color: AppColors.primary, width: 2.w),
  //     alignment: Alignment.center,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(20.r),
  //     ),
  //   )),
  //   textTheme: TextTheme(
  //     titleMedium: TextStyle(
  //       fontSize: 14.sp,
  //       fontWeight: FontWeight.w500,
  //     ),
  //     bodyLarge: const TextStyle(
  //       fontSize: 26,
  //       fontWeight: FontWeight.w700,
  //     ),
  //     bodyMedium: const TextStyle(
  //       fontSize: 18,
  //       fontWeight: FontWeight.w300,
  //     ),
  //     headlineMedium: TextStyle(
  //       fontSize: 12.sp,
  //       fontWeight: FontWeight.w300,
  //     ),
  //     bodySmall: TextStyle(
  //       fontSize: 10.sp,
  //       fontWeight: FontWeight.w200,
  //     ),
  //     headlineLarge: TextStyle(
  //       fontSize: 22.sp,
  //       fontWeight: FontWeight.w400,
  //     ),
  //   ),
  // );
  static final ThemeData themeData = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AppColors.primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.dark50,
    datePickerTheme: DatePickerThemeData(
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    ),
    cardTheme: CardTheme(
      elevation: 0,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    ),
    dialogTheme: DialogTheme(
      surfaceTintColor: AppColors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 4,
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      foregroundColor: AppColors.primary,
      side: BorderSide(color: AppColors.primary, width: 2.w),
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
    )),
  );
}
