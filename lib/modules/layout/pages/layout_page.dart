import 'package:app/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../layout.dart';
import '../widgets/widgets.dart';

class LayoutPage extends GetView<LayoutController> {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Obx(() {
            return IndexedStack(
              index: controller.layoutState.value.selectedIndex,
              alignment: Alignment.bottomCenter,
              children: [
                const HomePage(),
                Container(color: Colors.red),
                Container(color: Colors.blue),
                Container(color: Colors.green),
                Container(color: Colors.yellow),
              ],
            );
          }),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 8.h,
          ),
          child: const CustomBottonNavBar(),
        ),
      ],
    ));
  }
}
