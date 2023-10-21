import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventTextName extends StatelessWidget {
  const EventTextName({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontFamily: "Roboto",
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0xff1a1a1a),
    );

    return Text(
      title,
      style: style,
      textAlign: TextAlign.left,
    );
  }
}
