import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/modules/settings/controllers/soporte_controller.dart';
import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';

class SoportePage extends GetView<SoporteController> {
  const SoportePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                  alignment: Alignment.centerLeft, child: CustomBackButton()),
              const SizedBox(height: 16),
              Text('Contactar soporte', style: AppTextStyles.base.w600),
              const SizedBox(height: 16),
              const AppTextField(hintText: 'Asunto del mensaje'),
              const SizedBox(height: 16),
              Expanded(
                child: TextFormField(
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: AppColors.dark100),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(color: AppColors.dark100),
                      ),
                      fillColor: AppColors.white,
                      filled: true,
                      hintText: 'Texto del mensaje'),
                ),
              ),
              const SizedBox(height: 16),
              MyFilledButton(
                  text: 'Enviar mensaje',
                  onPressed: () {
                    Get.closeCurrentSnackbar();
                    Get.snackbar(
                      'Enviado',
                      'Su mensaje ha sido enviado, gracias por contactar con soporte',
                      backgroundColor: AppColors.black,
                      colorText: AppColors.white,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  })
            ],
          ),
        ),
      ),
    ));
  }
}
