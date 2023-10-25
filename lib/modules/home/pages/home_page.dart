import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/custom_navbar/custom_navbar.dart';
import '../widgets/widgets.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            //TODO: Falta hacer el boton de cargar mas eventos...
            ListView(
              padding: EdgeInsets.only(top: 60.h, bottom: 60.h),
              physics: const BouncingScrollPhysics(),
              children: List<int>.generate(4, (index) => index).map(
                (item) {
                  if (item == 2) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 14.h),
                      child: const EventCard(isEvent: false),
                    );
                  }
                  return Padding(
                    padding: EdgeInsets.only(bottom: 14.h),
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
