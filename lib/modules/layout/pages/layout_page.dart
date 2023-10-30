import 'package:app/modules/home/home.dart';
import 'package:app/modules/my_reservations/my_reservation.dart';
import 'package:app/modules/notifications/notification_page.dart';
import 'package:app/modules/search/pages/search_page.dart';
import 'package:app/modules/settings/pages/settings_page.dart';
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
              children: const [
                HomePage(),
                SearchPage(),
                MyReservationPage(),
                NotificationPage(),
                SettingsPage()
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
