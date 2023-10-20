import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

import 'package:get/get.dart';

import 'home_controller.dart';
import 'widgets/custom_navbar/custom_navbar.dart';
import 'widgets/widgets.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> list = [1, 2, 3];
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: list.map(
                (item) {
                  if (item == 2) {
                    return Padding(
                        padding: EdgeInsets.only(
                            top: item == 1 ? 60.h : 10.h,
                            bottom: item == list.length ? 100.h : 10.h),
                        child: const EventCard(isEvent: false));
                  }
                  return Padding(
                    padding: EdgeInsets.only(
                        top: item == 1 ? 60.h : 10.h,
                        bottom: item == list.length ? 100.h : 10.h),
                    child: const EventCard(isEvent: true),
                  );
                },
              ).toList(),
            ),
            const CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
