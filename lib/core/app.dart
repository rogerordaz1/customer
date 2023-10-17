// add app class to inittialize getmaterialapp
import 'package:app/core/app_pages.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomerApp extends StatelessWidget {
  const CustomerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(328, 640),
      child: GetMaterialApp(
        title: 'Customer App',
        debugShowCheckedModeBanner: false,
        theme: buildThemeData(),
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
      ),
    );
  }
}
