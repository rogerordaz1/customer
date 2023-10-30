import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'notification_controller.dart';
import 'widgets/card_notification.dart';
import 'package:app/core/theme/themes.dart';

class NotificationPage extends GetView<NotificationController> {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notificaciones', style: AppTextStyles.base.w500),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(TablerIcons.clear_all),
                    label: Text('Limpiar todo', style: AppTextStyles.base.w500))
              ],
            ),
            const CardNotification(
              icon: TablerIcons.refresh_alert,
              fillColor: AppColors.orange300,
              title: '¡Atención! Cambios en este evento',
              supertitle:
                  'Festival Internacional del Nuevo Cine Latinoamericano',
              content:
                  'Le informamos que se han realizado cambios en la hora y lugar de este evento. El horario se modifica para las 10:00AM y los lugares pasan a ser solo los cines del proyecto La Rampa.',
            ),
            const CardNotification(
              icon: TablerIcons.refresh_alert,
              fillColor: AppColors.orange300,
              title: '¡Atención! Cambios en este evento',
              supertitle: 'Paisajes sin nombre',
              content:
                  'Le informamos que se este espectaculo ha sufridos cambios en su horario y lugar, pasando a ser a las 11:00AM en la Galería Villa Manuela',
            ),
            const CardNotification(
              icon: TablerIcons.mood_sad,
              fillColor: AppColors.red400,
              time: '5m',
              title: '¡Atención! Este espectáculo ha sido cancelado.',
              supertitle:
                  'Festival Internacional del Nuevo Cine Latinoamericano',
              content:
                  'Lamentamos informarle que este evento ha sido cancelado. Pedimos disculpas por los inconvenientes causados. Puedes continuar explorando en aplicación',
            ),
            const CardNotification(
              icon: TablerIcons.mood_sad,
              fillColor: AppColors.red400,
              time: '10m',
              title: '¡Atención! Este espectáculo ha sido cancelado.',
              supertitle: 'Paisajes sin nombre',
              content:
                  'Lamentamos informarle que este evento ha sido cancelado. Pedimos disculpas por los inconvenientes causados. Puedes continuar explorando en aplicación',
            ),
            const CardNotification(
              icon: TablerIcons.cookie,
              time: '10m',
              title: 'Hemos recibido el pago de su pedido de snacks',
              content:
                  'El pedido está siendo procesado, le enviaremos una notificación para su recogida',
              pedido: true,
            ),
            const CardNotification(
              icon: TablerIcons.cookie,
              title: 'Su pedido de snacks está listo para recoger',
              time: '10m',
              content:
                  'El pedido está siendo procesado, le enviaremos una notificación para su recogida',
              pedido: true,
            ),
            const CardNotification(
              icon: TablerIcons.cookie,
              fillColor: AppColors.orange300,
              title: '¡Has olvidado los snacks!',
              time: '30m',
              snackTitle: 'Tienes snacks reservados para este espectáculo!',
              snackContent: 'Paisajes Sin Nombre',
              content:
                  'No olvides recogerlos para disfrutar por completo de tu experiencia. Al finalizar el espectáculo si no los has recogido, los snacks dejarán de estar disponibles',
              pedido: true,
            ),
            const CardNotification(
              icon: TablerIcons.transfer,
              title: 'Solicitud de transferencia de entrada aceptada',
              time: '3h',
              transTitle: 'Tiana Saris',
              transSubti: 'Entradas',
              transTimes: 'Septiembre',
            ),
            const CardNotification(
              icon: TablerIcons.transfer,
              fillColor: AppColors.orange300,
              time: '12h',
              title: 'Alguien te quiere transferir una entrada o pasaporte',
              snackTitle:
                  'Alex Navarro quiere transferirte una entrada o pasaporte para este espectaculo o evento.',
              snackContent:
                  'Festival Internacional del Nuevo Cine Latinoamericano amsdm',
              action: true,
            ),
            const CardNotification(
              icon: TablerIcons.confetti,
              time: '1d',
              title: '¡Nuevos eventos para ti!',
              snackContent:
                  'Festival Internacional del Nuevo Cine Latinoamericano amsdm',
              detalles: true,
            ),
            const CardNotification(
              icon: TablerIcons.ticket,
              time: '10m',
              title: 'Hemos recibido el pago de su entrada',
              pedido: true,
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    ));
  }
}
