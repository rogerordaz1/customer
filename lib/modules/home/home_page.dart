import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

import 'package:get/get.dart';


import 'home_controller.dart';
import 'widgets/custom_navbar.dart';
import 'widgets/widgets.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const EventCard(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const EventCard(),
                  SizedBox(
                    height: 40.h,
                  ),
                ],
              ),
            ),
            const CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
