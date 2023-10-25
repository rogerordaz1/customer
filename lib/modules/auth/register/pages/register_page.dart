import 'package:app/modules/auth/register/register.dart';

import 'package:app/modules/auth/widgets/custom_login_fields.dart';
import 'package:app/modules/auth/widgets/custom_register_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../../../../core/common/widgets/my_filled_button.dart';
import '../../../../core/common/widgets/widgets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_theme.dart';
import '../../../layout/layout.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: SafeArea(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.0.h),
                      child: const CustomBackButton(),
                    ),
                    SizedBox(height: 70.h),
                    const Center(
                      child: CustomRegisterTitles(
                        text: 'Crear una cuenta',
                        isSubtitle: false,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    const CustomRegisterTitles(
                      text:
                          'Introduzca los datos a requeridos a continuacion para crear una cuenta en La Papeleta',
                      isSubtitle: true,
                    ),
                    SizedBox(height: 70.h),
                    const CustomFormField(hintext: 'Numero de teléfono'),
                    SizedBox(height: 8.h),
                    const CustomFormField(hintext: 'Correo electrónico'),
                    SizedBox(height: 8.h),
                    const CustomFormField(hintext: 'Contraseña'),
                    SizedBox(height: 8.h),
                    const CustomFormField(hintext: 'Repita la contraseña'),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 50.h),
                      child: MyFilledButton(
                        text: "Continuar",
                        onPressed: () => Get.toNamed(
                            '${RegisterRoutes.register}${RegisterRoutes.activateAcount}'),
                        iconData: TablerIcons.chevron_right,
                        style: AppTextStyles.base.s12.whiteColor.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
