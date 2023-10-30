import 'package:app/core/theme/themes.dart';
import 'package:app/modules/checkout_module/controllers/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

class PaymentModePassportView extends GetView<CheckoutController> {
  const PaymentModePassportView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Resumen de la reservación',
                style: AppThemes.themeData.textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.dark0,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Image(
                          image: AssetImage(
                            'assets/image1.png',
                          ),
                          width: 80,
                          height: 90,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Paiseje Sin Nombre',
                                style:
                                    AppThemes.themeData.textTheme.titleMedium),
                            FilledButton(
                              style: FilledButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: AppColors.primary),
                              onPressed: () => controller
                                  .isTapDetails(!controller.isTapDetails.value),
                              child: Row(
                                children: [
                                  Text(controller.isTapDetails.value
                                      ? 'Ocultar detalles'
                                      : 'Ver detalles configurados'),
                                  Icon(controller.isTapDetails.value
                                      ? TablerIcons.chevron_up
                                      : TablerIcons.chevron_down)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    if (controller.isTapDetails.value) ...[
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Text(
                            '1',
                            style: AppThemes.themeData.textTheme.headlineLarge!
                                .copyWith(color: AppColors.dark0),
                          ),
                          minLeadingWidth: 24,
                          title: Text(
                            'Entradas',
                            style: AppThemes.themeData.textTheme.labelLarge!
                                .copyWith(color: AppColors.dark0),
                          ),
                          subtitle: Text(
                            'Solo para este evento',
                            style: AppThemes.themeData.textTheme.bodySmall!
                                .copyWith(color: AppColors.dark0),
                          ),
                          trailing: const Icon(
                            TablerIcons.check,
                            color: AppColors.dark0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: const CircleAvatar(
                              backgroundColor: AppColors.dark0,
                              child: Icon(TablerIcons.map_pin,
                                  color: AppColors.primary)),
                          minLeadingWidth: 24,
                          title: Text(
                            'Nombre del Lugar',
                            style: AppThemes.themeData.textTheme.labelLarge!
                                .copyWith(color: AppColors.dark0),
                          ),
                          subtitle: Text(
                            'Dirección del lugar',
                            style: AppThemes.themeData.textTheme.bodySmall!
                                .copyWith(color: AppColors.dark0),
                          ),
                          trailing: const Icon(
                            TablerIcons.check,
                            color: AppColors.dark0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Text(
                            'DD',
                            style: AppThemes.themeData.textTheme.headlineLarge!
                                .copyWith(color: AppColors.dark0),
                          ),
                          title: Text(
                            'MM, YYYY',
                            style: AppThemes.themeData.textTheme.labelLarge!
                                .copyWith(color: AppColors.dark0),
                          ),
                          subtitle: Text(
                            'Xxxxx, hh:mm PM',
                            style: AppThemes.themeData.textTheme.labelMedium!
                                .copyWith(color: AppColors.dark0),
                          ),
                          trailing: const Icon(
                            TablerIcons.check,
                            color: AppColors.dark0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: const CircleAvatar(
                              backgroundColor: AppColors.dark0,
                              child: Icon(TablerIcons.cookie,
                                  color: AppColors.primary)),
                          title: Text(
                            'Snacks',
                            style: AppThemes.themeData.textTheme.labelLarge!
                                .copyWith(color: AppColors.dark0),
                          ),
                          subtitle: Text(
                            'Has incluido snacks en tu entrada',
                            style: AppThemes.themeData.textTheme.bodySmall!
                                .copyWith(color: AppColors.dark0),
                          ),
                          trailing: const Icon(
                            TablerIcons.check,
                            color: AppColors.dark0,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Seleccione el método de pago',
                style: AppThemes.themeData.textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: controller.isTapTransf.value
                      ? AppColors.primary
                      : AppColors.dark0,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  minLeadingWidth: 24,
                  leading: const CircleAvatar(
                    radius: 16,
                    backgroundColor: AppColors.dark0,
                    child: Image(
                      image: AssetImage(
                        'assets/transfermovil.png',
                      ),
                    ),
                  ),
                  title: Text(
                    'Transfermóvil',
                    style: AppThemes.themeData.textTheme.labelLarge!.copyWith(
                        color: controller.isTapTransf.value
                            ? AppColors.dark0
                            : AppColors.dark900),
                  ),
                  trailing: Icon(
                    controller.isTapTransf.value
                        ? TablerIcons.check
                        : TablerIcons.circle,
                    color: controller.isTapTransf.value
                        ? AppColors.dark0
                        : AppColors.dark200,
                  ),
                  onTap: () =>
                      controller.isTapTransf(!controller.isTapTransf.value),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
