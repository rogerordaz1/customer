import 'package:app/modules/auth/recovery_password/recovery_password_controller.dart';
import 'package:app/modules/auth/widgets/custom_back_buttom.dart';
import 'package:app/modules/auth/widgets/custom_register_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';

class EnterCodePage extends GetView<RecoveryPasswordController> {
  const EnterCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                const Align(
                    alignment: Alignment.bottomLeft, child: CustomBackButtom()),
                const SizedBox(height: 80),
                const CustomRegisterTitles(
                    text: 'Recuperar la contraseña', isSubtitle: false),
                SizedBox(height: 8.h),
                const CustomRegisterTitles(
                  text:
                      'Introduzca el código PIN que le hemos enviado en un SMS',
                  isSubtitle: true,
                ),
                SizedBox(height: 80.h),
              ],
            ),
          ),
        ));
  }
}
