import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';

class Politicas extends StatelessWidget {
  const Politicas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Políticas del lugar:', style: AppTextStyles.base.w500),
          const SizedBox(height: 4),
          Text(
              'En nuestra galería de arte, valoramos la seguridad, la comodidad y el disfrute de todos nuestros visitantes. Por lo tanto, pedimos a todos los clientes que manejen las obras de arte con el máximo respeto y no toquen ninguna pieza a menos que se indique lo contrario. Por favor, no traiga alimentos o bebidas al interior de la galería y mantenga un tono de voz moderado para no perturbar a otros visitantes. Las fotografías son permitidas, pero sin flash para proteger la integridad de las obras. Agradecemos su comprensión y cooperación para mantener un ambiente agradable y seguro en nuestra galería.',
              style: AppTextStyles.base)
        ],
      ),
    );
  }
}
