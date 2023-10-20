


import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../../../modules/home/widgets/widgets.dart';

class BottonSheets {
  static dynamic showEventDetailBottomSheet({required BuildContext context}) {
    return Get.bottomSheet(
      GestureDetector(
        onTap: () {
          Get.back();
          showBottomSheet(
            backgroundColor: Colors.transparent,
            context: Scaffold.of(context).context,
            builder: (context) {
              return const EventDetailFullWidget();
            },
          );
        },
        child: const EventDetailsWidget(),
      ),
    );
  }
}




