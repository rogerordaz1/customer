import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class Evento extends StatelessWidget {
  const Evento({super.key, required this.isEntrada});
  // TODO: Cambiar despues
  final bool isEntrada;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108.h,
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: Image.asset(
              'assets/image1.png',
              width: 80.w,
              height: 91.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    isEntrada
                        ? 'Paisajes Sin Nombre'
                        : 'Festival Internacional del Nuevo Cine Latinoamericano',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: AppTextStyles.base.s14.w600),
                if (isEntrada) ...[
                  Row(
                    children: [
                      Text('16', style: AppTextStyles.base.s28.primaryColor),
                      SizedBox(width: 8.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Agosto, 2023', style: AppTextStyles.base.w500),
                          Text('Miércoles, 8:00PM',
                              style: AppTextStyles.base.w500),
                        ],
                      )
                    ],
                  ),
                ],
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        context: context,
                        builder: (context) => AppDraggable(isEvent: isEntrada));
                  },
                  child: Row(
                    children: [
                      const Icon(TablerIcons.eye, color: AppColors.primary),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                            isEntrada
                                ? 'Detalles del espectáculo'
                                : 'Detalles del evento',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.base.primaryColor.w500),
                      ),
                    ],
                  ),
                )
              ],
              // mainAxisAlignment: Main,
            ),
          ),
        ],
      ),
    );
  }
}
