import 'package:app/modules/auth/recovery_password/controllers/recovery_password_controller.dart';
import 'package:app/modules/auth/recovery_password/routes/recovery_password_routes.dart';
import 'package:app/modules/auth/widgets/custom_back_buttom.dart';
import 'package:app/modules/auth/widgets/custom_login_buttom.dart';
import 'package:app/modules/auth/widgets/custom_login_fields.dart';
import 'package:app/modules/auth/widgets/custom_register_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../../../../core/common/widgets/widgets.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.0.h),
                  child: const CustomBackButton(),
                ),
                SizedBox(height: 80.h),
                const Center(
                  child: CustomRegisterTitles(
                      text: 'Recuperar la cuenta', isSubtitle: false),
                ),
                SizedBox(height: 8.h),
                const CustomRegisterTitles(
                  text:
                      'Introduzca su dirección de correo electronico para recuperar su cuenta',
                  isSubtitle: true,
                ),
                SizedBox(height: 80.h),
                const CustomFormField(hintext: 'Correo electronico'),
                const Spacer(),
                CustomFilledButton(
                  iconData: TablerIcons.chevron_right,
                  buttonText: "Continuar",
                  onPressed: () => Get.toNamed(
                      '${RecoveryPasswordRoutes.recovery}${RecoveryPasswordRoutes.recoveryEntrerCode}'),
                  style: Theme.of(context).filledButtonTheme.style!.copyWith(
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 10.h,
                          ),
                        ),
                      ),
                  isDesingInverse: true,
                ),
              ],
            ),
          ),
        ));
  }
}
