import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:app/core/utils/dialogs/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CustomDialogs {
  static dynamic showSelectDialog() =>
      Get.dialog(const SelectPassportOrEntryDialog());

  static Future<DateTimeRange?> filterDateRange() async {
    final date = await showDateRangePicker(
        context: Get.context!,
        initialDateRange: DateTimeRange(
            start: DateTime.now(),
            end: DateTime.now().add(const Duration(days: 7))),
        locale: const Locale('es'),
        switchToCalendarEntryModeIcon: const Icon(TablerIcons.calendar),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 30)));

    // TODO: Print
    date.printInfo();
    return date;
  }

  static void filterCategory() async {
    // devolver la catergory
    final category = await showDialog(
      context: Get.context!,
      useSafeArea: false,
      builder: (context) => const Dialog.fullscreen(child: FilterCategory()),
    );
  }

  static void filterArtist() async {
    // devolver la artist
    final artist = await showDialog(
      context: Get.context!,
      useSafeArea: false,
      builder: (context) => const Dialog.fullscreen(child: FilterArtist()),
    );
  }

  static void filterPlace() async {
    // devolver la place
    final place = await showDialog(
      context: Get.context!,
      useSafeArea: false,
      builder: (context) => const Dialog.fullscreen(child: FilterPlace()),
    );
  }

  static void showDialogRechazar() {
    showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog(
        surfaceTintColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text('Estas a punto de cancelar esta transferencia',
            textAlign: TextAlign.center,
            style: AppTextStyles.base.primaryColor.s18),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('¿Estas seguro que deseas rechazarla?',
                textAlign: TextAlign.center, style: AppTextStyles.base),
            const SizedBox(height: 24),
            MyFilledButton(text: 'Rechazar', onPressed: () {}),
            const SizedBox(height: 8),
            CustomOutlineButton(
                buttonText: 'Volver',
                onPressed: () => Get.back(),
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16)))
          ],
        ),
      ),
    );
  }

  static void showDialogAceptar() {
    showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog(
        title: Text('Has aceptado la transferencia',
            textAlign: TextAlign.center,
            style: AppTextStyles.base.primaryColor.s18.w500),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'Ahora puedes ver esta entrada o pasaporte en la seccion de Entradas',
                textAlign: TextAlign.center,
                style: AppTextStyles.base),
            const SizedBox(height: 24),
            MyFilledButton(text: 'Ir a entradas', onPressed: () {}),
            const SizedBox(height: 8),
            CustomOutlineButton(
                buttonText: 'Cerrar',
                onPressed: () => Get.back(),
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16)))
          ],
        ),
      ),
    );
  }

  static void showDialogQrRecogerSnack() {
    showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog(
        title: Text('Recibir snacks',
            textAlign: TextAlign.center,
            style: AppTextStyles.base.primaryColor.s18.w500),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.size.width,
              height: 200.h,
              child: Center(
                child: QrImageView(
                  data:
                      'https://enroll.zellepay.com/qr-codes?data=CnsKICAgICJ0b2tlbiI6ICIxMzA1OTg2MTYyOSIsCiAgICAibmFtZSI6ICJWZXJpZ3UgRXhwb3J0cyBMbGMiLAogICAgImFjdGlvbiI6ICJwYXltZW50Igp9',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
