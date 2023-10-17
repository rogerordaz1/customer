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
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 60.h,
                ),
                const EventCard(),
                SizedBox(
                  height: 10.h,
                ),
                const EventCard(),
                SizedBox(
                  height: 60.h,
                ),
              ],
            ),
            const CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
