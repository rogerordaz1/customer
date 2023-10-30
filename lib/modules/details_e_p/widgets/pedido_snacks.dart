import 'package:app/core/theme/themes.dart';
import 'package:app/core/utils/dialogs/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';

class PedidoSnacks extends StatefulWidget {
  const PedidoSnacks({super.key});

  @override
  State<PedidoSnacks> createState() => _PedidoSnacksState();
}

class _PedidoSnacksState extends State<PedidoSnacks> {
  final isExpanded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        // padding: const EdgeInsets.fromLTRB(),
        child: ObxValue((i) {
          return Column(
            children: [
              GestureDetector(
                onTap: () => i.toggle(),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(8),
                        topRight: const Radius.circular(8),
                        bottomLeft:
                            i.value ? Radius.zero : const Radius.circular(8),
                        bottomRight:
                            i.value ? Radius.zero : const Radius.circular(8),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Pedido',
                              style: AppTextStyles.base.whiteColor.w500),
                          Text('#s-123', style: AppTextStyles.base.whiteColor)
                        ],
                      ),
                      Row(
                        children: [
                          FilledButton.icon(
                              style: FilledButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  backgroundColor: AppColors.white),
                              onPressed: () {
                                CustomDialogs.showDialogQrRecogerSnack();
                              },
                              icon: const Icon(TablerIcons.qrcode,
                                  color: AppColors.primary),
                              label: Text(
                                'Recoger snacks',
                                style: AppTextStyles.base.w500.primaryColor,
                              )),
                          const SizedBox(width: 8),
                          Icon(
                              i.value
                                  ? TablerIcons.chevron_up
                                  : TablerIcons.chevron_down,
                              color: AppColors.white)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.linearToEaseOut,
                child: i.value
                    ? Container(
                        margin: const EdgeInsets.only(top: 8),
                        decoration: const BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.dark50),
                              child: Row(
                                children: [
                                  Text('6',
                                      style:
                                          AppTextStyles.base.s20.primaryColor),
                                  const SizedBox(width: 8),
                                  Text('Galleta',
                                      style: AppTextStyles.base.w500),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.dark50),
                              child: Row(
                                children: [
                                  Text('6',
                                      style:
                                          AppTextStyles.base.s20.primaryColor),
                                  const SizedBox(width: 8),
                                  Text('Galleta',
                                      style: AppTextStyles.base.w500),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.dark50),
                              child: Row(
                                children: [
                                  Text('6',
                                      style:
                                          AppTextStyles.base.s20.primaryColor),
                                  const SizedBox(width: 8),
                                  Text('Galleta',
                                      style: AppTextStyles.base.w500),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
              // Transform(
              //   transform: Matrix4.translationValues(
              //     0.0,
              //     200 * (1.0 - (i.value ? 1 : 0)),
              //     0.0,
              //   ),
              //   child: ,
              // )
            ],
          );
        }, isExpanded));
  }
}
