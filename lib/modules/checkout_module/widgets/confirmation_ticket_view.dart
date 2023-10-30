import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConfirmationTicketView extends StatelessWidget {
  const ConfirmationTicketView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SvgPicture.asset('assets/success.svg'),
            Text(
              'Reservación realizada con éxito',
              style: AppThemes.themeData.textTheme.headlineSmall!
                  .copyWith(color: AppColors.primary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Su reservación se ha realizado con éxito, le hemos enviado un mensaje con los detalles de su operación.',
              style: AppThemes.themeData.textTheme.titleMedium!,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text:
                          'Puede revisar su reservación en cualquier momento desde la pantalla de ',
                      style: AppThemes.themeData.textTheme.bodyMedium),
                  TextSpan(
                      text: 'Reservaciones',
                      style: AppThemes.themeData.textTheme.titleMedium),
                  TextSpan(
                      text:
                          ' o puede continuar explorando más eventos o espectáculos',
                      style: AppThemes.themeData.textTheme.bodyMedium)
                ],
              ),
              textAlign: TextAlign.center,
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
                    fixedSize: const Size.fromWidth(double.maxFinite),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99)),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    foregroundColor: AppColors.dark0,
                    // backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Ir al inicio',
                    style: AppThemes.themeData.textTheme.titleSmall!
                        .copyWith(color: AppColors.dark0),
                  )),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(1, 10, 73, 163),
                    Color.fromARGB(1, 14, 107, 240),
                  ],
                ),
              ),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  fixedSize: const Size.fromWidth(double.maxFinite),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99),
                      side: const BorderSide(
                        color: AppColors.primary,
                        width: 2,
                      )),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  foregroundColor: AppColors.primary,
                  backgroundColor: Colors.transparent,
                ),
                onPressed: () {},
                child: Text(
                  'Ver mis reservaciones',
                  style: AppThemes.themeData.textTheme.titleSmall!
                      .copyWith(color: AppColors.primary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
