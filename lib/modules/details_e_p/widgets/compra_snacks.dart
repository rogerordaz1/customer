import 'package:flutter/material.dart';
import 'package:app/core/theme/themes.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class CompraSnacks extends StatelessWidget {
  const CompraSnacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Snack', style: AppTextStyles.base.w500),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                            color: AppColors.primary, shape: BoxShape.circle),
                        child: const Icon(TablerIcons.cookie,
                            color: AppColors.white)),
                    const SizedBox(width: 8),
                    Flexible(
                        child: Text(
                      'Snacks disponibles',
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.base.w500,
                    ))
                  ],
                ),
              ),
              Row(
                children: [
                  TextButton.icon(
                      onPressed: () async {},
                      icon: const Icon(TablerIcons.plus),
                      label: Text(
                        'Comprar',
                        style: AppTextStyles.base.primaryColor.w600,
                      ))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
