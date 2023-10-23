import 'package:app/modules/auth/recovery_password/recovery_password_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/theme/app_colors.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 32.h,
      child: GestureDetector(
        onTap: () => Get.toNamed(RecoveryPasswordRoutes.recovery),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'He olvidado mi contraseña',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 12,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
