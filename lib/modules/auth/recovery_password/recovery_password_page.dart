import 'package:app/modules/auth/recovery_password/recovery_password_controller.dart';
import 'package:app/modules/auth/recovery_password/recovery_password_routes.dart';
import 'package:app/modules/auth/widgets/custom_back_buttom.dart';
import 'package:app/modules/auth/widgets/custom_login_buttom.dart';
import 'package:app/modules/auth/widgets/custom_login_fields.dart';
import 'package:app/modules/auth/widgets/custom_register_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';

class RecoveryPasswordPage extends GetView<RecoveryPasswordController> {
  const RecoveryPasswordPage({super.key});

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
                      'Introduzca el número de teléfono o la dirección email para recuperar su cuenta',
                  isSubtitle: true,
                ),
                SizedBox(height: 80.h),
                const CustomFormField(
                    hintext: 'Número de teléfono o dirección email'),
                SizedBox(height: 230.h),
                CustomLoginButtoms(
                    onTap: () {
                      Get.toNamed(
                          '${RecoveryPasswordRoutes.recovery}/${RecoveryPasswordRoutes.recovery}_enter_code');
                    },
                    hintext: 'Continuar',
                    ispraimary: true),
              ],
            ),
          ),
        ));
  }
}
