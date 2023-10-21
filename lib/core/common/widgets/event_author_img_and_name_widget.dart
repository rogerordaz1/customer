import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

class EventAuthorImgAndName extends StatelessWidget {
  const EventAuthorImgAndName({
    super.key,
    required this.authorImg,
    required this.authorName,
    this.isIconShowing = true,
  });

  final String authorImg;
  final String authorName;
  final bool? isIconShowing;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontFamily: "Roboto",
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xff232323),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              maxRadius: 10.r,
              backgroundImage: AssetImage(authorImg),
            ),
            SizedBox(width: 10.w),
            Text(
              authorName,
              style: style,
              textAlign: TextAlign.left,
            ),
          ],
        ),
        //? Revisar despues que se va a hacer con los 3 punticos..
        if (isIconShowing == true)
          const Icon(
            TablerIcons.dots_vertical,
          )
      ],
    );
  }
}
