import 'package:app/modules/auth/register/register_controller.dart';
import 'package:app/modules/auth/widgets/custom_back_buttom.dart';
import 'package:app/modules/auth/widgets/custom_login_buttom.dart';
import 'package:app/modules/auth/widgets/custom_login_fields.dart';
import 'package:app/modules/auth/widgets/custom_register_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';

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
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  const Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomBackButtom()),
                  const SizedBox(height: 100),
                  const CustomRegisterTitles(
                      text: 'Crear una cuenta', isSubtitle: false),
                  SizedBox(height: 8.h),
                  const CustomRegisterTitles(
                    text:
                        'Introduzca los datos a requeridos a continuacion para crear una cuenta en La Papeleta',
                    isSubtitle: true,
                  ),
                  SizedBox(height: 80.h),
                  const CustomFormField(hintext: 'Numero de teléfono'),
                  SizedBox(height: 8.h),
                  const CustomFormField(hintext: 'Contraseña'),
                  SizedBox(height: 8.h),
                  const CustomFormField(hintext: 'Repita la contraseña'),
                  SizedBox(height: 120.h),
                  CustomLoginButtoms(
                      onTap: () {}, hintext: 'Continuar', ispraimary: true),
                ],
              ),
            ),
          ),
        ));
  }
}
