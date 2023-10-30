import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:app/core/theme/themes.dart';
import 'package:app/core/common/widgets/widgets.dart';
import 'details_e_p_controller.dart';
import 'widgets/widgets.dart';

class DetailsEPPage extends GetView<DetailsEPController> {
  const DetailsEPPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isEntrada = Get.arguments ?? false;
    // isEntrada ? 'Entrada' : 'Passport',
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.only(top: 56),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Header(isEntrada: isEntrada),
                    const SizedBox(height: 16),
                    Evento(isEntrada: isEntrada),
                    const SizedBox(height: 8),
                    // Ads
                    if (!isEntrada) ...[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('assets/image1.png',
                            height: 200, fit: BoxFit.fill),
                      ),
                      const SizedBox(height: 8),
                    ],
                    // QR
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: QrImageView(
                        data:
                            'https://enroll.zellepay.com/qr-codes?data=CnsKICAgICJ0b2tlbiI6ICIxMzA1OTg2MTYyOSIsCiAgICAibmFtZSI6ICJWZXJpZ3UgRXhwb3J0cyBMbGMiLAogICAgImFjdGlvbiI6ICJwYXltZW50Igp9',
                      ),
                    ),
                    const SizedBox(height: 8),
                    const ReservadoPor(),
                    const SizedBox(height: 8),
                    Text('Datos generales', style: AppTextStyles.base.w500),
                    const SizedBox(height: 8),
                    isEntrada
                        ? const DatosGeneralesEntrada()
                        : const DatosGeneralesPassport(),
                    const SizedBox(height: 8),
                    const CompraSnacks(),
                    const SizedBox(height: 8),
                    const PedidoSnacks(),
                    const SizedBox(height: 8),
                    isEntrada ? const Politicas() : const Historial(),
                  ],
                ),
              ),
              const Positioned(top: 0, left: 0, child: CustomBackButton())
            ],
          ),
        ),
      ),
    );
  }
}
