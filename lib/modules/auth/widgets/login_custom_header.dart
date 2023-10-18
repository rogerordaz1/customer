import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 64.h,
          width: 200.w,
          child: Image.asset(
            'assets/logo_login.png',
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 18.h),
        Text(
          'La aplicación móvil para eventos en Cuba',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.sp,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            height: 0.10,
            letterSpacing: 0.10,
          ),
        ),
      ],
    );
  }
}
