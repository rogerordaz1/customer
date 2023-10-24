import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/app_colors.dart';
import 'package:app/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../widgets/widgets.dart';

class ShowListPage extends GetView<HomeController> {
  const ShowListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> list = [1, 2, 3];
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
          child: Stack(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: index == 0 ? 60.h : 10.h,
                    bottom: index == list.length - 1 ? 60.h : 10.h,
                  ),
                  child: const EventCard(isEvent: false),
                );
              },
              physics: const BouncingScrollPhysics(),
            ),
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


