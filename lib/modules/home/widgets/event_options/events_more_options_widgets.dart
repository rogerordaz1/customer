import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../../../core/common/widgets/widgets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_theme.dart';
import '../widgets.dart';

class MoreEventOptionsWidget extends StatelessWidget {
  const MoreEventOptionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: BoxDecoration(
        color: AppColors.dark50,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14.r),
          topRight: Radius.circular(14.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.h),
          const Center(child: DraggableIndicator()),
          SizedBox(height: 10.h),
          Text(
            'Compartir esta entrada',
            style: AppTextStyles.base.s16.w500.copyWith(
              color: AppColors.compartirColorBlack,
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            height: 180.h,
            child: Column(
              children: [
                Expanded(
                  child: OptionModalItemWidget(
                    onPressed: () {},
                    iconData: TablerIcons.download,
                    title: 'Descargar como PDF',
                    subtitle: 'Descarga como ducumento y compartelo',
                  ),
                ),
                SizedBox(height: 8.h),
                Expanded(
                  child: OptionModalItemWidget(
                    onPressed: () {},
                    iconData: TablerIcons.share,
                    title: 'Compartir en redes sociales',
                    subtitle: 'Comparte vía Whatsapp, Telegram y otras',
                  ),
                ),
                SizedBox(height: 8.h),
                Expanded(
                  child: OptionModalItemWidget(
                    onPressed: () {},
                    iconData: TablerIcons.map_pin,
                    title: 'Copiar dirección del lugar',
                    subtitle: 'Comparte la dirección con un amigo o familiar',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
