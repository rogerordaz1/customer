import 'package:app/core/theme/themes.dart';
import 'package:app/core/utils/botton_sheets/botton_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

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
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 10.w,
      leading: CircleAvatar(
        backgroundImage: AssetImage(authorImg),
        radius: 15.r,
      ),
      title: Text(authorName, style: AppTextStyles.base.w500),
      trailing: isIconShowing != null
          ? IconButton(
              icon: const Icon(TablerIcons.dots_vertical),
              onPressed: () =>
                  BottonSheets.showMoreOptionsBottonSheet(context: context),
            )
          : null,
    );
  }
}
