import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class DatosGeneralesPassport extends StatelessWidget {
  const DatosGeneralesPassport({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.dark50,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Text('10', style: AppTextStyles.base.s20.w500.primaryColor),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Entradas', style: AppTextStyles.base.w500),
                    Text('Solo para este evento', style: AppTextStyles.base.s10)
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: AppColors.dark50,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Text('3',
                          style: AppTextStyles.base.s20.w500.primaryColor),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Entradas', style: AppTextStyles.base.w500),
                          Text('Disponible', style: AppTextStyles.base.s10)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: AppColors.dark50,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Text('7',
                          style: AppTextStyles.base.s20.w500
                              .copyWith(color: AppColors.orange400)),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Entradas', style: AppTextStyles.base.w500),
                          Text('Usadas', style: AppTextStyles.base.s10)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
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
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primary),
                  child:
                      const Icon(TablerIcons.map_pin, color: AppColors.white),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Múltiples locaciones',
                        style: AppTextStyles.base.w500),
                    Text('La Habana', style: AppTextStyles.base.s10)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
