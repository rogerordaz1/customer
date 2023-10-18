import 'package:app/modules/home/home_routes.dart';
import 'package:app/modules/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

import 'package:get/get.dart';

import '../widgets/custom_login_buttom.dart';
import '../widgets/login_center_fields.dart';
import '../widgets/login_custom_header.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100.h),
                const LoginHeader(),
                SizedBox(height: 80.h),
                const LoginFields(),
                SizedBox(height: 100.h),
                CustomLoginButtoms(
                    onTap: () => Get.toNamed(LayoutRoutes.name),
                    hintext: 'Acceder',
                    ispraimary: true),
                SizedBox(height: 8.h),
                const CustomLoginButtoms(
                    hintext: 'Crear una cuenta', ispraimary: false),
              ],
            ),
          ),
        ));
  }
}
