import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_login_fields.dart';
import 'forgot_password_text.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 144.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomFormField(hintext: 'Numero de teléfono'),
          SizedBox(height: 8.h),
          const CustomFormField(hintext: 'Contraseña'),
          SizedBox(height: 12.h),
          const ForgotPasswordText(),
        ],
      ),
    );
  }
}
