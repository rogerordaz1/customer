import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:app/modules/details_e_p/details_e_p.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';

class CardReservation extends StatelessWidget {
  const CardReservation({super.key, this.entrada = true});
  final bool entrada;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: entrada
                      ? [AppColors.primary, AppColors.secondGradientBlue]
                      : [
                          AppColors.firstGradientOrange,
                          AppColors.secondGradientOrange
                        ],
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(TablerIcons.ticket, color: AppColors.white),
                        const SizedBox(width: 8),
                        Text(entrada ? 'Entrada' : 'Pasaporte',
                            style: AppTextStyles.base.whiteColor.w500)
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 16),
                        side:
                            const BorderSide(color: AppColors.white, width: 2)),
                    onPressed: () {},
                    child: Text(
                      'Pendiente de pago',
                      style: AppTextStyles.base.w500.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            )),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  height: 108.h,
                  padding: EdgeInsets.all(8.h),
                  decoration: BoxDecoration(
                    color: AppColors.dark50,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.r),
                        child: Image.asset(
                          'assets/image1.png',
                          width: 80.w,
                          height: 91.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                  entrada
                                      ? 'Paisajes Sin Nombre'
                                      : 'Festival Internacional del Nuevo Cine Latinoamericano',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: AppTextStyles.base.s14.w600),
                            ),
                            SizedBox(height: 4.h),
                            if (entrada) ...[
                              Row(
                                children: [
                                  Text('16',
                                      style:
                                          AppTextStyles.base.s28.primaryColor),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Agosto, 2023',
                                          style: AppTextStyles.base.w500),
                                      Text('Miércoles, 8:00PM',
                                          style: AppTextStyles.base.w500.s10),
                                    ],
                                  )
                                ],
                              ),
                            ],
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                    context: context,
                                    builder: (context) =>
                                        AppDraggable(isEvent: entrada));
                              },
                              child: Row(
                                children: [
                                  const Icon(TablerIcons.eye,
                                      color: AppColors.primary),
                                  const SizedBox(width: 8),
                                  Flexible(
                                    child: Text(
                                        entrada
                                            ? 'Detalles del espectáculo'
                                            : 'Detalles del evento',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles
                                            .base.primaryColor.w500),
                                  ),
                                ],
                              ),
                            )
                          ],
                          // mainAxisAlignment: Main,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                const AppSeparator(color: AppColors.dark300),
                SizedBox(height: 8.h),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.dark50),
                      color: AppColors.dark50,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Text('16', style: AppTextStyles.base.s28.primaryColor),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Entradas',
                            style: AppTextStyles.base.w500,
                          ),
                          Text('Solo para este evento',
                              style: AppTextStyles.base.s10),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: AppColors.dark50,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Container(
                        width: 32.w,
                        height: 32.w,
                        decoration: const BoxDecoration(
                            color: AppColors.primary, shape: BoxShape.circle),
                        child: const Icon(TablerIcons.map_pin,
                            color: AppColors.white),
                      ),
                      const SizedBox(width: 16),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Galería Collage Habana',
                              style: AppTextStyles.base.w500,
                            ),
                            Text(
                                'San Rafael No.103 e/ Consulado e Industri aksd kjas djknamsjdka sdkja',
                                softWrap: true,
                                style: AppTextStyles.base.s10),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                MyFilledButton(
                    text: entrada ? 'Ver entrada' : 'Ver detalles',
                    iconData: TablerIcons.eye,
                    isDesingInverse: true,
                    onPressed: () {
                      // TODO: Agregar argumento despues
                      Get.toNamed(DetailsEPRoutes.detailsEP,
                          arguments: entrada);
                    }),
                const SizedBox(height: 8),
                if (entrada) ...[
                  CustomOutlineButton(
                      buttonText: 'Pagar',
                      iconData: TablerIcons.credit_card,
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 10)))
                ]
              ],
            ),
          )
        ],
      ),
    );
  }
}
