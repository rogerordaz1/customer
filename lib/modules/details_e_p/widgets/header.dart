import 'package:app/core/theme/themes.dart';
import 'package:app/modules/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.isEntrada});
  final bool isEntrada;

  @override
  Widget build(BuildContext context) {
    final gradient = isEntrada
        ? [AppColors.primary, AppColors.secondGradientBlue]
        : [AppColors.firstGradientOrange, AppColors.secondGradientOrange];
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 4, 4, 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: gradient,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(TablerIcons.ticket, color: AppColors.white),
              const SizedBox(width: 8),
              Text(isEntrada ? 'Entrada' : 'Pasaporte',
                  style: AppTextStyles.base.w500.whiteColor)
            ],
          ),
          Row(
            children: [
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 2, color: AppColors.white)),
                  onPressed: () {
                    Get.closeCurrentSnackbar();
                    Get.snackbar(
                      'Copiado',
                      'Se ha copiado el identificador al portapapeles',
                      icon:
                          const Icon(TablerIcons.check, color: AppColors.white),
                      backgroundColor: AppColors.black,
                      colorText: AppColors.white,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  child: Text(
                    '#E-2032-231-0',
                    style: AppTextStyles.base.whiteColor,
                  )),
              IconButton(
                icon: const Icon(TablerIcons.dots_vertical,
                    color: AppColors.white),
                onPressed: () {
                  Get.bottomSheet(const MoreEventOptionsWidget());
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
