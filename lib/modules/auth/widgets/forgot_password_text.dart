import 'package:app/core/theme/themes.dart';
import 'package:app/modules/auth/recovery_password/routes/recovery_password_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        style: AppTextStyles.base.primaryColor.w500.s12,
      ),
    );
  }
}
