import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DraggableIndicator extends StatelessWidget {
  const DraggableIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.w,
      height: 4.h,
      decoration: const BoxDecoration(
        color: Color(0xffBABABA),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}