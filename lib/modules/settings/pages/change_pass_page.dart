import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:app/modules/settings/settings.dart';

class ChangePassPage extends GetView<ChangePassController> {
  const ChangePassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                  alignment: Alignment.centerLeft, child: CustomBackButton()),
              const SizedBox(height: 48),
              Text('Cambiar contraseña', style: AppTextStyles.base.s28.w500),
              const SizedBox(height: 8),
              Text(
                  'Introduzca el número de teléfono o la dirección de correo electrónico para recuperar su cuenta',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.base.w500),
              const SizedBox(height: 80),
              const AppTextField(
                  hintText: 'Contraseña nueva', obscureText: true),
              const SizedBox(height: 8),
              const AppTextField(
                  hintText: 'Repita la nueva contraseña', obscureText: true),
              const Spacer(),
              MyFilledButton(
                  text: 'Recuperar cuenta',
                  isDesingInverse: true,
                  iconData: TablerIcons.check,
                  onPressed: () {
                    Get.back();
                    Get.back();
                    // Get.
                  })
            ],
          ),
        ),
      ),
    ));
  }
}
