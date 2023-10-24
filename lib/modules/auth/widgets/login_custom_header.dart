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
          width: 180.w,
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          'La aplicación móvil para eventos en Cuba',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
