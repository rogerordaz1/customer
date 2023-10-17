import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'maps_controller.dart';

class MapsPage extends GetView<MapsController> {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MapsPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MapsPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
