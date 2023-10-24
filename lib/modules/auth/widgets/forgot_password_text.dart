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
    return GestureDetector(
      onTap: () => Get.toNamed(RecoveryPasswordRoutes.recovery),
      child: Text(
        'He olvidado mi contraseña',
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
