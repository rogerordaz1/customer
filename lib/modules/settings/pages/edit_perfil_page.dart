import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:app/modules/settings/controllers/edit_perfil_controller.dart';

class EditPerfilPage extends GetView<EditPerfilController> {
  const EditPerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 56),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 16),
                  Text('Editar perfil', style: AppTextStyles.base.w600),
                  const SizedBox(height: 16),
                  const AppTextField(hintText: 'Nombre'),
                  const SizedBox(height: 8),
                  const AppTextField(hintText: 'Apellidos'),
                  const SizedBox(height: 8),
                  const AppTextField(hintText: 'Número de teléfono'),
                  const SizedBox(height: 8),
                  const AppTextField(hintText: 'Correo electrónico'),
                  const SizedBox(height: 16),
                  const SelectCartnetPasaport(),
                  const SizedBox(height: 16),
                  ObxValue(
                      (s) => AppTextField(
                          hintText: s.value == 1
                              ? 'Carnet de identidad'
                              : 'Pasaporte'),
                      controller.selectedOption),
                  const SizedBox(height: 200),
                  MyFilledButton(
                      text: 'Guardar cambios',
                      onPressed: () {
                        Get.back();
                      })
                ],
              ),
            ),
            const Positioned(top: 0, left: 0, child: CustomBackButton())
          ],
        ),
      ),
    ));
  }
}

class SelectCartnetPasaport extends GetView<EditPerfilController> {
  const SelectCartnetPasaport({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
                child: RadioListTile<int>(
                    value: 1,
                    dense: true,
                    title: Text('Carnet de identidad',
                        style: AppTextStyles.base.w500),
                    activeColor: AppColors.primary,
                    groupValue: controller.selectedOption.value,
                    onChanged: (value) {
                      controller.selectedOption.value = value!;
                    })),
            Expanded(
              child: RadioListTile<int>(
                dense: true,
                title: Text('Pasaporte', style: AppTextStyles.base.w500),
                value: 2,
                groupValue: controller.selectedOption.value,
                activeColor: AppColors.primary,
                onChanged: (value) {
                  controller.selectedOption.value = value!;
                },
              ),
            ),
          ],
        ));
  }
}
