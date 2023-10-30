import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController
    with GetTickerProviderStateMixin {
  //TODO: Implement CheckoutController.

  final isTicket = true.obs;

  late TabController tabcontroller;

  final activeStep = 0.obs;
  final isTapTickets = false.obs;
  final isTapPlace = false.obs;
  final isTapDate = false.obs;
  final isTapSnack = false.obs;
  final isTapSpecAm = false.obs;
  final isTapDetails = false.obs;
  final isTapTransf = false.obs;
  @override
  void onInit() {
    super.onInit();
    tabcontroller = TabController(length: 3, vsync: this);
  }

  void onChangeStep() {
    tabcontroller.index = activeStep.value;
  }
}
