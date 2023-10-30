import 'package:app/core/theme/themes.dart';
import 'package:app/modules/checkout_module/controllers/checkout_controller.dart';
import 'package:app/modules/checkout_module/widgets/configuration_passport_view.dart';
import 'package:app/modules/checkout_module/widgets/configuration_ticket_view.dart';
import 'package:app/modules/checkout_module/widgets/confirmation_passport_view.dart';
import 'package:app/modules/checkout_module/widgets/confirmation_ticket_view.dart';
import 'package:app/modules/checkout_module/widgets/payment_mode_passport_view.dart';
import 'package:app/modules/checkout_module/widgets/payment_mode_ticket_view.dart';
import 'package:app/modules/home/pages/show_list_page.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tabler_icons/tabler_icons.dart';

class CheckoutPage extends GetView<CheckoutController> {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16.w, top: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomBackButton(),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.vertical,
                  children: [
                    Text('Pago',
                        style: AppThemes.themeData.textTheme.titleSmall),
                    Obx(() {
                      return Text(
                          controller.activeStep.value == 0
                              ? 'Configuración'
                              : controller.activeStep.value == 1
                                  ? 'Método de pago'
                                  : 'Confirmación',
                          style: AppThemes.themeData.textTheme.bodySmall!
                              .copyWith(color: AppColors.dark900));
                    }),
                  ],
                ),
                SizedBox(width: 100.w)
              ],
            ),
          ),
          const SizedBox(height: 16),
          Obx(() {
            return EasyStepper(
              activeStep: controller.activeStep.value,
              activeStepBackgroundColor: AppColors.primary,
              unreachedStepBackgroundColor: AppColors.dark200,
              showLoadingAnimation: false,
              stepRadius: 12,
              // enableStepTapping: false,
              // padding:EdgeInsets.zero,
              // fitWidth: true,
              padding: EdgeInsets.zero,
              showTitle: false,
              internalPadding: 4,
              lineStyle: const LineStyle(
                finishedLineColor: AppColors.primary,
                unreachedLineColor: AppColors.dark200,
                activeLineColor: AppColors.dark200,
                lineType: LineType.normal,
                lineThickness: 3,
              ),

              steps: [
                EasyStep(customStep: Container()),
                EasyStep(customStep: Container()),
                EasyStep(customStep: Container()),
              ],
              onStepReached: (index) {
                controller.activeStep(index);
                controller.onChangeStep();
              },
            );
          }),
          const SizedBox(height: 16),
          Expanded(
            child: TabBarView(
              controller: controller.tabcontroller,
              physics: const NeverScrollableScrollPhysics(),
              children: controller.isTicket.value
                  ? const [
                      ConfigurationTicketView(),
                      PaymentModeTicketView(),
                      ConfirmationTicketView(),
                    ]
                  : const [
                      ConfigurationPassportView(),
                      PaymentModePassportView(),
                      ConfirmationPassportView(),
                    ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      )),
      bottomNavigationBar: Obx(() {
        if (controller.activeStep.value != 2) {
          return Container(
            height: 120,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: AppColors.dark100)),
              color: AppColors.dark0,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total a pagar',
                        style: AppThemes.themeData.textTheme.titleSmall,
                      ),
                      Text(
                        '\$50.00',
                        style: AppThemes.themeData.textTheme.titleMedium!
                            .copyWith(color: AppColors.primary),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(1, 10, 73, 163),
                    Color.fromARGB(1, 14, 107, 240),
                  ])),
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(99)),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        foregroundColor: AppColors.dark0,
                        // backgroundColor: Colors.transparent,
                      ),
                      onPressed: () {
                        if (controller.activeStep.value == 0) {
                          controller.activeStep(1);
                          controller.onChangeStep();
                        } else {
                          controller.activeStep(2);
                          controller.onChangeStep();
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.activeStep.value == 0
                                ? 'Ir a pagar'
                                : 'Realizar Pago',
                            style: AppThemes.themeData.textTheme.titleSmall!
                                .copyWith(color: AppColors.dark0),
                          ),
                          const SizedBox(width: 8),
                          const Icon(TablerIcons.chevron_right),
                        ],
                      )),
                ),
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}
