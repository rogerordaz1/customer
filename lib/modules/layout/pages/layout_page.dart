import 'package:app/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../layout.dart';
import '../widgets/widgets.dart';

class LayoutPage extends GetView<LayoutController> {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: const Stack(
        alignment: Alignment.bottomCenter,
        children: [
          HomePage(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomBottonNavBar()),
        ],
      ),
    ));
  }
}
