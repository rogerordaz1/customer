import 'package:app/core/common/widgets/my_filled_button.dart';
import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/theme/app_text_theme.dart';
import 'package:app/modules/auth/register/routes/register_routes.dart';
import 'package:app/modules/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../../widgets/login_center_fields.dart';
import '../../widgets/login_custom_header.dart';
import '../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(AppColors.dark900);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100.h),
                  const LoginHeader(),
                  SizedBox(height: 65.h),
                  const LoginFields(),
                  // SizedBox(height: 100.h),
                  const Spacer(),
                  MyFilledButton(
                    text: "Acceder",
                    onPressed: () => Get.toNamed(LayoutRoutes.name),
                    iconData: TablerIcons.chevron_right,
                    style: AppTextStyles.base.s12.whiteColor.w500,
                  ),

                  SizedBox(height: 8.h),
                  CustomOutlineButton(
                    buttonText: 'Crear una cuenta',
                    onPressed: () => Get.toNamed(RegisterRoutes.register),
                    style:
                        Theme.of(context).outlinedButtonTheme.style!.copyWith(
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 12.5.h),
                              ),
                            ),
                  ),
                  SizedBox(height: 50.h)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
