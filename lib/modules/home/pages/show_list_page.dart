import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/app_colors.dart';
import 'package:app/modules/home/home.dart';
import 'package:app/modules/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

class ShowListPage extends GetView<HomeController> {
  const ShowListPage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(
                top: 50.h, bottom: 60.h, left: 16.w, right: 16.w),
            physics: const BouncingScrollPhysics(),
            children: List.generate(10, (i) => EventCard(isEvent: i % 2 == 0)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 10.w),
            child: const CustomBackButton(),
          ),
        ],
      )),
    );
  }
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: CustomFilledButton(
        iconData: TablerIcons.chevron_left,
        buttonText: 'Volver',
        iconSize: 20.h,
        style: Theme.of(context).filledButtonTheme.style!,
        onPressed: () => Get.back(),
        // isBackButton: true,
        textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppColors.dark0,
            ),
      ),
    );
  }
}
