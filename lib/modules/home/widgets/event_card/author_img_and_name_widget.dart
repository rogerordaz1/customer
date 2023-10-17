import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

class AuthorImgAndName extends StatelessWidget {
  const AuthorImgAndName({
    super.key,
    required this.authorImg,
    required this.authorName,
  });

  final String authorImg;
  final String authorName;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontFamily: "Roboto",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xff232323),
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
        const Icon(
          TablerIcons.dots_vertical,
        )
      ],
    );
  }
}
