import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDetailDescriptionWidget extends StatelessWidget {
  const EventDetailDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      "Paisajes sin Nombre es el título de la exposición personal del artista matancero Enrique Casas. Con curaduría de Meira Marrero, la muestra propone una serie de paisajes al óleo, con vistas de la ciudad de Matanzas, al occidente del país, en las que el artista ofrece la impresión visual de atrapar la luz y el instante pero al final es que este texto debe estar entre",
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xff666666),
      ),
      wrapWords: true,
    );
  }
}
