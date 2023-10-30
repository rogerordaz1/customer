import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';

class ReservadoPor extends StatelessWidget {
  const ReservadoPor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Reservado por:', style: AppTextStyles.base.w500),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.dark50,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                CircleAvatar(),
                const SizedBox(width: 8),
                Text('Tiana Siaris', style: AppTextStyles.base.w500)
              ],
            ),
          )
        ],
      ),
    );
  }
}
