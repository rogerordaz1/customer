import 'package:app/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../modules/home/widgets/widgets.dart';

class BottonSheets {
  static dynamic showEventDetailBottomSheet({required BuildContext context}) {
    // return Get.bottomSheet(
    //   GestureDetector(
    //     onTap: () {
    //       Get.back();
    //       showBottomSheet(
    //           context: context,
    //           builder: (context) {
    //             return Container(
    //               height: double.infinity,
    //               width: double.infinity,
    //               color: Colors.red,
    //             );
    //           });
    //     },
    //     child: const EventDetailsWidget(),
    //   ),
    // );
    return Get.bottomSheet(
      Container(
        height: 600,
        width: double.infinity,
        color: Colors.red,
      ),
    );
  }
}
