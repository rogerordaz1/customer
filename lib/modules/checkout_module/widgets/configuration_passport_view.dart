import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/modules/checkout_module/controllers/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

class ConfigurationPassportView extends GetView<CheckoutController> {
  const ConfigurationPassportView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.dark0,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
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
                            style: AppThemes.themeData.textTheme.titleMedium),
                        Container(
                          color: AppColors.dark50,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            children: [
                              Text('\$50.00',
                                  style: AppThemes
                                      .themeData.textTheme.bodyMedium!
                                      .copyWith(color: AppColors.primary)),
                              Text(
                                '/Entrada',
                                style: AppThemes.themeData.textTheme.bodySmall!
                                    .copyWith(color: AppColors.dark400),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Selecciones las opciones para la entrada',
                style: AppThemes.themeData.textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: controller.isTapTickets.value
                      ? AppColors.primary
                      : AppColors.dark0,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: controller.isTapTickets.value
                          ? AppColors.dark0
                          : AppColors.primary,
                      child: Icon(
                        TablerIcons.ticket,
                        color: controller.isTapTickets.value
                            ? AppColors.primary
                            : AppColors.dark0,
                      )),
                  title: Text(
                    'Seleccione la cantidad de entradas',
                    style: AppThemes.themeData.textTheme.bodyMedium!.copyWith(
                      color: controller.isTapTickets.value
                          ? AppColors.dark0
                          : AppColors.dark900,
                    ),
                  ),
                  subtitle: Text(
                    'Número de entradas a reservar',
                    style: AppThemes.themeData.textTheme.bodySmall!.copyWith(
                      color: controller.isTapTickets.value
                          ? AppColors.dark0
                          : AppColors.dark400,
                    ),
                  ),
                  trailing: Icon(
                    controller.isTapTickets.value
                        ? TablerIcons.chevron_up
                        : TablerIcons.chevron_down,
                    color: controller.isTapTickets.value
                        ? AppColors.dark0
                        : AppColors.primary,
                  ),
                  onTap: () =>
                      controller.isTapTickets(!controller.isTapTickets.value),
                ),
              ),
              if (controller.isTapTickets.value) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dark0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Text(
                            '1',
                            style: AppThemes.themeData.textTheme.headlineLarge!
                                .copyWith(color: AppColors.primary),
                          ),
                          minLeadingWidth: 24,
                          title: Text(
                            'Entradas',
                            style: AppThemes.themeData.textTheme.labelLarge,
                          ),
                          subtitle: Text(
                            'Solo para este evento',
                            style: AppThemes.themeData.textTheme.bodySmall!
                                .copyWith(color: AppColors.dark400),
                          ),
                          trailing: const Icon(
                            TablerIcons.circle,
                            color: AppColors.dark200,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dark0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Text(
                            '2',
                            style: AppThemes.themeData.textTheme.headlineLarge!
                                .copyWith(color: AppColors.primary),
                          ),
                          minLeadingWidth: 24,
                          title: Text(
                            'Entradas',
                            style: AppThemes.themeData.textTheme.labelLarge,
                          ),
                          subtitle: Text(
                            'Solo para este evento',
                            style: AppThemes.themeData.textTheme.bodySmall!
                                .copyWith(color: AppColors.dark400),
                          ),
                          trailing: const Icon(
                            TablerIcons.circle,
                            color: AppColors.dark200,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dark0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Text(
                            '5',
                            style: AppThemes.themeData.textTheme.headlineLarge!
                                .copyWith(color: AppColors.primary),
                          ),
                          minLeadingWidth: 24,
                          title: Text(
                            'Entradas',
                            style: AppThemes.themeData.textTheme.labelLarge,
                          ),
                          subtitle: Text(
                            'Solo para este evento',
                            style: AppThemes.themeData.textTheme.bodySmall!
                                .copyWith(color: AppColors.dark400),
                          ),
                          trailing: const Icon(
                            TablerIcons.circle,
                            color: AppColors.dark200,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () => controller
                            .isTapSpecAm(!controller.isTapSpecAm.value),
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.isTapSpecAm.value
                                ? AppColors.primary
                                : AppColors.dark0,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: SizedBox(
                                    height: double.maxFinite,
                                    child: Icon(
                                      TablerIcons.ticket,
                                      color: controller.isTapSpecAm.value
                                          ? AppColors.dark0
                                          : AppColors.primary,
                                    )),
                                minLeadingWidth: 2,
                                title: Text(
                                  'Especifique otra cantidad',
                                  style: AppThemes
                                      .themeData.textTheme.labelLarge!
                                      .copyWith(
                                          color: controller.isTapSpecAm.value
                                              ? AppColors.dark0
                                              : AppColors.dark900),
                                ),
                                subtitle: Text(
                                  'Disponible para todos los eventos',
                                  style: AppThemes
                                      .themeData.textTheme.bodySmall!
                                      .copyWith(
                                          color: controller.isTapSpecAm.value
                                              ? AppColors.dark0
                                              : AppColors.dark400),
                                ),
                                trailing: Icon(
                                  controller.isTapSpecAm.value
                                      ? TablerIcons.check
                                      : TablerIcons.circle,
                                  color: controller.isTapSpecAm.value
                                      ? AppColors.dark0
                                      : AppColors.dark200,
                                ),
                              ),
                              if (controller.isTapSpecAm.value) ...[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FilledButton(
                                      onPressed: () {},
                                      style: FilledButton.styleFrom(
                                          backgroundColor: AppColors.dark0,
                                          shape: const CircleBorder()),
                                      child: const Icon(
                                        TablerIcons.minus,
                                        color: AppColors.primary,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: AppColors.dark0,
                                            borderRadius:
                                                BorderRadius.circular(99),
                                          ),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: [
                                              FilteringTextInputFormatter
                                                  .digitsOnly,
                                              LengthLimitingTextInputFormatter(
                                                  4),
                                            ],
                                            textAlign: TextAlign.center,
                                            // maxLength: 4,
                                            decoration:
                                                const InputDecoration.collapsed(
                                              hintText: '',
                                            ),
                                          )),
                                    ),
                                    FilledButton(
                                      onPressed: () {},
                                      style: FilledButton.styleFrom(
                                          backgroundColor: AppColors.dark0,
                                          shape: const CircleBorder()),
                                      child: const Icon(
                                        TablerIcons.plus,
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FilledButton(
                                    style: FilledButton.styleFrom(
                                      fixedSize: const Size.fromWidth(
                                          double.maxFinite),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(99),
                                          side: const BorderSide(
                                            color: AppColors.dark0,
                                            width: 2,
                                          )),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      foregroundColor: AppColors.dark0,
                                      backgroundColor: Colors.transparent,
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          TablerIcons.check,
                                          color: AppColors.dark0,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Establecer',
                                          style: AppThemes
                                              .themeData.textTheme.titleSmall!
                                              .copyWith(color: AppColors.dark0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                              ]
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: controller.isTapPlace.value
                      ? AppColors.primary
                      : AppColors.dark0,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: controller.isTapPlace.value
                          ? AppColors.dark0
                          : AppColors.primary,
                      child: Icon(TablerIcons.map_pin,
                          color: controller.isTapPlace.value
                              ? AppColors.primary
                              : AppColors.dark0)),
                  title: Text(
                    'Seleccione el lugar',
                    style: AppThemes.themeData.textTheme.labelLarge!.copyWith(
                        color: controller.isTapPlace.value
                            ? AppColors.dark0
                            : AppColors.dark900),
                  ),
                  subtitle: Text(
                    'Lugares disponibles para este espectáculo',
                    style: AppThemes.themeData.textTheme.bodySmall!.copyWith(
                        color: controller.isTapPlace.value
                            ? AppColors.dark0
                            : AppColors.dark400),
                  ),
                  trailing: Icon(
                    controller.isTapPlace.value
                        ? TablerIcons.chevron_up
                        : TablerIcons.chevron_down,
                    color: controller.isTapPlace.value
                        ? AppColors.dark0
                        : AppColors.primary,
                  ),
                  onTap: () =>
                      controller.isTapPlace(!controller.isTapPlace.value),
                ),
              ),
              if (controller.isTapPlace.value) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dark0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: const CircleAvatar(
                              backgroundColor: AppColors.primary,
                              child: Icon(TablerIcons.map_pin,
                                  color: AppColors.dark0)),
                          minLeadingWidth: 24,
                          title: Text(
                            'Nombre del Lugar',
                            style: AppThemes.themeData.textTheme.labelLarge,
                          ),
                          subtitle: Text(
                            'Dirección del lugar',
                            style: AppThemes.themeData.textTheme.bodySmall!
                                .copyWith(color: AppColors.dark400),
                          ),
                          trailing: const Icon(
                            TablerIcons.circle,
                            color: AppColors.dark200,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dark0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: const CircleAvatar(
                              backgroundColor: AppColors.primary,
                              child: Icon(TablerIcons.map_pin,
                                  color: AppColors.dark0)),
                          minLeadingWidth: 24,
                          title: Text(
                            'Nombre del Lugar',
                            style: AppThemes.themeData.textTheme.labelLarge,
                          ),
                          subtitle: Text(
                            'Dirección del lugar',
                            style: AppThemes.themeData.textTheme.bodySmall!
                                .copyWith(color: AppColors.dark400),
                          ),
                          trailing: const Icon(
                            TablerIcons.circle,
                            color: AppColors.dark200,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: controller.isTapDate.value
                      ? AppColors.primary
                      : AppColors.dark0,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: controller.isTapDate.value
                          ? AppColors.dark0
                          : AppColors.primary,
                      child: Icon(TablerIcons.calendar_due,
                          color: controller.isTapDate.value
                              ? AppColors.primary
                              : AppColors.dark0)),
                  title: Text(
                    'Seleccione la fecha y hora',
                    style: AppThemes.themeData.textTheme.bodyMedium!.copyWith(
                        color: controller.isTapDate.value
                            ? AppColors.dark0
                            : AppColors.dark900),
                  ),
                  subtitle: Text(
                    'Fecha y horarios disponibles',
                    style: AppThemes.themeData.textTheme.bodySmall!.copyWith(
                        color: controller.isTapDate.value
                            ? AppColors.dark0
                            : AppColors.dark400),
                  ),
                  trailing: Icon(
                    controller.isTapDate.value
                        ? TablerIcons.chevron_up
                        : TablerIcons.chevron_down,
                    color: controller.isTapDate.value
                        ? AppColors.dark0
                        : AppColors.primary,
                  ),
                  onTap: () =>
                      controller.isTapDate(!controller.isTapDate.value),
                ),
              ),
              if (controller.isTapDate.value) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: controller.isTapDate.value
                                  ? AppColors.primary
                                  : AppColors.dark0,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: Text(
                                'DD',
                                style: AppThemes
                                    .themeData.textTheme.headlineLarge!
                                    .copyWith(
                                        color: controller.isTapDate.value
                                            ? AppColors.dark0
                                            : AppColors.primary),
                              ),
                              title: Text(
                                'MM',
                                style: AppThemes.themeData.textTheme.labelLarge!
                                    .copyWith(
                                        color: controller.isTapDate.value
                                            ? AppColors.dark0
                                            : AppColors.dark900),
                              ),
                              subtitle: Text(
                                'YYYY',
                                style: AppThemes
                                    .themeData.textTheme.labelMedium!
                                    .copyWith(
                                        color: controller.isTapDate.value
                                            ? AppColors.dark0
                                            : AppColors.dark400),
                              ),
                              trailing: Icon(
                                controller.isTapDate.value
                                    ? TablerIcons.chevron_up
                                    : TablerIcons.chevron_down,
                                color: controller.isTapDate.value
                                    ? AppColors.dark0
                                    : AppColors.primary,
                              ),
                              onTap: () => controller
                                  .isTapDate(!controller.isTapDate.value),
                            ),
                          ),
                          if (controller.isTapDate.value) ...[
                            const SizedBox(height: 8),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.dark0,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ListTile(
                                      title: Row(
                                        children: [
                                          Text(
                                            'hh:mm',
                                            style: AppThemes.themeData.textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                    color: AppColors.primary),
                                          ),
                                          const Text(' '),
                                          Text(
                                            'PM',
                                            style: AppThemes.themeData.textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color: AppColors.dark900),
                                          )
                                        ],
                                      ),
                                      trailing: const Icon(TablerIcons.circle,
                                          color: AppColors.dark200),
                                      onTap: () => controller.isTapDate(
                                          !controller.isTapDate.value),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.dark0,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ListTile(
                                      title: Row(
                                        children: [
                                          Text(
                                            'hh:mm',
                                            style: AppThemes.themeData.textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                    color: AppColors.primary),
                                          ),
                                          const Text(' '),
                                          Text(
                                            'PM',
                                            style: AppThemes.themeData.textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    color: AppColors.dark900),
                                          )
                                        ],
                                      ),
                                      trailing: const Icon(TablerIcons.circle,
                                          color: AppColors.dark200),
                                      onTap: () => controller.isTapDate(
                                          !controller.isTapDate.value),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                ],
                              ),
                            )
                          ],
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: false ? AppColors.primary : AppColors.dark0,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          leading: Text(
                            'DD',
                            style: AppThemes.themeData.textTheme.headlineLarge!
                                .copyWith(
                                    color: false
                                        ? AppColors.dark0
                                        : AppColors.primary),
                          ),
                          title: Text(
                            'MM',
                            style: AppThemes.themeData.textTheme.labelLarge!
                                .copyWith(
                                    color: false
                                        ? AppColors.dark0
                                        : AppColors.dark900),
                          ),
                          subtitle: Text(
                            'YYYY',
                            style: AppThemes.themeData.textTheme.labelMedium!
                                .copyWith(
                                    color: false
                                        ? AppColors.dark0
                                        : AppColors.dark400),
                          ),
                          trailing: const Icon(
                            false
                                ? TablerIcons.chevron_up
                                : TablerIcons.chevron_down,
                            color: false ? AppColors.dark0 : AppColors.primary,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
              const SizedBox(height: 16),
              Text(
                'Extra',
                style: AppThemes.themeData.textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: controller.isTapSnack.value
                      ? AppColors.primary
                      : AppColors.dark0,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: controller.isTapSnack.value
                          ? AppColors.dark0
                          : AppColors.primary,
                      child: Icon(TablerIcons.cookie,
                          color: controller.isTapSnack.value
                              ? AppColors.primary
                              : AppColors.dark0)),
                  title: Text(
                    'Seleccione los snacks',
                    style: AppThemes.themeData.textTheme.bodyMedium!.copyWith(
                        color: controller.isTapSnack.value
                            ? AppColors.dark0
                            : AppColors.dark900),
                  ),
                  subtitle: Text(
                    'Este espectáculo tiene snacks disponibles',
                    style: AppThemes.themeData.textTheme.bodySmall!.copyWith(
                        color: controller.isTapSnack.value
                            ? AppColors.dark0
                            : AppColors.dark400),
                  ),
                  trailing: Icon(
                    controller.isTapSnack.value
                        ? TablerIcons.chevron_up
                        : TablerIcons.chevron_down,
                    color: controller.isTapSnack.value
                        ? AppColors.dark0
                        : AppColors.primary,
                  ),
                  onTap: () =>
                      controller.isTapSnack(!controller.isTapSnack.value),
                ),
              ),
              if (controller.isTapSnack.value) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(color: AppColors.dark0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.dark100,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  height: 96,
                                  width: 96,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nombre del snack',
                                        style: AppThemes
                                            .themeData.textTheme.labelLarge,
                                      ),
                                      Text(
                                        'Galletas doble chocolate Florbú, con pasta de cacao y el doble de diversión.',
                                        style: AppThemes
                                            .themeData.textTheme.bodySmall!
                                            .copyWith(color: AppColors.dark400),
                                      ),
                                      Text(
                                        '\$ 120.00',
                                        style: AppThemes
                                            .themeData.textTheme.bodyLarge!
                                            .copyWith(color: AppColors.primary),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FilledButton(
                                  onPressed: () {},
                                  style: FilledButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      shape: const CircleBorder()),
                                  child: const Icon(TablerIcons.minus),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(99),
                                        border: Border.all(
                                            color: AppColors.dark100)),
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                        LengthLimitingTextInputFormatter(4),
                                      ],
                                      textAlign: TextAlign.center,
                                      decoration:
                                          const InputDecoration.collapsed(
                                        hintText: '',
                                      ),
                                    ),
                                  ),
                                ),
                                FilledButton(
                                  onPressed: () {},
                                  style: FilledButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      shape: const CircleBorder()),
                                  child: const Icon(TablerIcons.plus),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.dark0,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: AppColors.dark300,
                    child: Icon(TablerIcons.cookie, color: AppColors.dark0),
                  ),
                  title: Text(
                    'Snacks no disponibles',
                    style: AppThemes.themeData.textTheme.bodyMedium!
                        .copyWith(color: AppColors.dark300),
                  ),
                  subtitle: Text(
                    'Este evento no tiene snacks disponibles',
                    style: AppThemes.themeData.textTheme.bodySmall!
                        .copyWith(color: AppColors.dark300),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
