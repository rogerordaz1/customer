import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_reservation_controller.dart';
import 'package:app/core/theme/themes.dart';
import 'widgets/card_reservation.dart';

class MyReservationPage extends GetView<MyReservationController> {
  const MyReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 12),
            Text('Mis reservaciones', style: AppTextStyles.base.w500),
            const SizedBox(height: 8),
            ...List.generate(5, (i) => CardReservation(entrada: i % 2 == 0)),
            const SizedBox(height: 50),
          ],
        ),
      ),
    ));
  }
}
