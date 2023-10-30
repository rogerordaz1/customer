import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:app/modules/auth/recovery_password/controllers/recovery_password_controller.dart';
import 'package:app/modules/auth/recovery_password/routes/recovery_password_routes.dart';
import 'package:app/modules/auth/widgets/custom_register_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class RecoveryPasswordPage extends GetView<RecoveryPasswordController> {
  const RecoveryPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          bottom: false,
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
                const AppTextField(
                  hintText: 'Correo electronico',
                  keyboardType: TextInputType.emailAddress,
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: MyFilledButton(
                    text: "Continuar",
                    onPressed: () => Get.toNamed(
                        '${RecoveryPasswordRoutes.recovery}${RecoveryPasswordRoutes.recoveryEntrerCode}'),
                    iconData: TablerIcons.chevron_right,
                    style: AppTextStyles.base.s12.whiteColor.w500,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
