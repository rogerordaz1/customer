import 'package:app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabler_icons/tabler_icons.dart';

class AboutThisEventWidget extends StatefulWidget {
  const AboutThisEventWidget({
    super.key,
  });

  @override
  State<AboutThisEventWidget> createState() => _AboutThisEventWidgetState();
}

class _AboutThisEventWidgetState extends State<AboutThisEventWidget> {
  bool isReadMore = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Sobre este evento',
              style: TextStyle(
                color: Color(0xFF1A1A1A),
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.10,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isReadMore = !isReadMore;
                });
              },
              child: Row(
                children: [
                  Text(
                    isReadMore == false ? 'Leer más' : 'Contraer',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.10,
                    ),
                  ),
                  isReadMore == true
                      ? Icon(
                          TablerIcons.chevron_up,
                          color: AppColors.primary,
                        )
                      : Icon(
                          TablerIcons.chevron_down,
                          color: AppColors.primary,
                        )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 14.h,
        ),
        AboutThisEventTextWidget(
          isReadMore: isReadMore,
        ),
        SizedBox(
          height: 14.h,
        ),
      ],
    );
  }
}

class AboutThisEventTextWidget extends StatelessWidget {
  const AboutThisEventTextWidget({
    super.key,
    required this.isReadMore,
  });

  final bool isReadMore;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Paisajes sin Nombre es el título de la exposición personal del artista matancero Enrique Casas. Con curaduría de Meira Marrero, la muestra propone una serie de paisajes al óleo, con vistas de la ciudad de Matanzas, al occidente del país, en las que el artista ofrece la impresión visual de atrapar la luz y el instante.\nCostas marinas, escenas campestres, de playas, veleros, vistas citadinas, son algunos de los paisajes que, pintados al aire libre, se distinguen por el uso de la luz y el color, con claros referentes al movimiento impresionista que se gestó en Europa a partir de la segunda mitad del siglo XIX.\nEnrique, como otros tantos a lo largo de la historia, pinta lo que sus ojos ven y ha elegido este recurso para apresar la luz del paisaje en un momento determinado. Tal efecto, el uso de la perspectiva aérea y la pincelada suelta, han dotado a sus obras de un realismo diferente y hacen distintiva su paleta de color. Así Matanzas, su ciudad natal, es captada desde cualquier lugar con toda la belleza que la luminosidad acentúa.\nEnrique Casas es escultor de formación, graduado de Nivel Medio Superior en la Escuela Provincial de Artes Plásticas de Matanzas, y heredero de la tradición pictórica de su abuelo Félix Casas Lima, reconocido paisajista, discípulo de Leopoldo Romañach.',
      maxLines: isReadMore == true ? null : 6,
      style: TextStyle(
          color: const Color(0xFF666666),
          fontSize: 12.5.sp,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          height: 1.4),
    );
  }
}