import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:app/core/utils/dialogs/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class CardNotification extends StatelessWidget {
  const CardNotification({
    super.key,
    required this.title,
    this.supertitle,
    this.content,
    this.time = '1m',
    this.iconColor = AppColors.white,
    this.fillColor = AppColors.primary,
    this.icon = TablerIcons.refresh_alert,
    this.pedido = false,
    this.snackTitle,
    this.snackContent,
    this.action = false,
    this.detalles = false,
    this.transTitle,
    this.transSubti,
    this.transTimes,
  });
  final String title;
  final String? supertitle;
  final String? content;
  final String time;
  final Color fillColor;
  final Color iconColor;
  final IconData icon;
  final bool pedido;
  // TODO: Cambiar despues
  final String? snackTitle;
  final String? snackContent;
  // TODO: Cambiar despues
  final String? transTitle;
  final String? transSubti;
  final String? transTimes;
  final bool action;
  final bool detalles;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              horizontalTitleGap: 8,
              leading: Container(
                width: 32.w,
                height: 32.h,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: fillColor),
                child: Icon(icon, color: iconColor),
              ),
              title: Text(title,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.base.w500),
              trailing: Text(time, style: AppTextStyles.base.w500.dark500Color),
            ),
            if (supertitle != null) ...[
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      context: context,
                      builder: (context) => const AppDraggable());
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppColors.dark50,
                      borderRadius: BorderRadius.circular(8)),
                  child: Text('$supertitle',
                      style: AppTextStyles.base.s14.w500.primaryColor),
                ),
              ),
            ],
            if (snackTitle != null) ...[
              const SizedBox(height: 8),
              Text('$snackTitle', style: AppTextStyles.base)
            ],
            if (snackContent != null) ...[
              const SizedBox(height: 8),
              Container(
                height: 107.h,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.dark50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        'assets/image1.png',
                        width: 80.w,
                        height: 91.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('$snackContent',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: AppTextStyles.base.s14.w600),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            height: 35.h,
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            decoration: BoxDecoration(
                                color: AppColors.dark100,
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Text('20',
                                    style: AppTextStyles
                                        .base.s22.w500.primaryColor),
                                SizedBox(width: 2.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Dic', style: AppTextStyles.base.w600),
                                    Text('09:00pm',
                                        style: AppTextStyles
                                            .base.s10.dark500Color),
                                  ],
                                ),
                                VerticalDivider(
                                    color: AppColors.dark200,
                                    indent: 4.h,
                                    endIndent: 4.h),
                                Text(
                                  '20',
                                  style:
                                      AppTextStyles.base.s22.w500.primaryColor,
                                ),
                                SizedBox(width: 2.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Dic',
                                        style: AppTextStyles.base.s14.w600),
                                    Text('09:00pm',
                                        style: AppTextStyles
                                            .base.s10.dark500Color),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                        // mainAxisAlignment: Main,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            if (content != null) ...[
              const SizedBox(height: 8),
              Text('$content', style: AppTextStyles.base),
              const SizedBox(height: 8),
            ],
            if (transTitle != null) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.dark50),
                child: Row(
                  children: [
                    const CircleAvatar(radius: 16),
                    const SizedBox(width: 8),
                    Text('$transTitle', style: AppTextStyles.base.w500)
                  ],
                ),
              )
            ],
            if (transSubti != null) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.dark50),
                child: Row(
                  children: [
                    Text('10', style: AppTextStyles.base.s24.w400.primaryColor),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$transSubti', style: AppTextStyles.base.w500),
                        Row(
                          children: [
                            Text('\$60.00',
                                style: AppTextStyles.base.s10.primaryColor),
                            const SizedBox(width: 4),
                            Text('Todos los eventos',
                                style: AppTextStyles.base.s10)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
            if (transTimes != null) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.dark50),
                child: Row(
                  children: [
                    Text('10', style: AppTextStyles.base.s24.w400.primaryColor),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$transTimes', style: AppTextStyles.base.w500),
                        Row(
                          children: [
                            Text('\$60.00',
                                style: AppTextStyles.base.s10.primaryColor),
                            const SizedBox(width: 4),
                            Text('Todos los eventos',
                                style: AppTextStyles.base.s10)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
            if (detalles) ...[
              const SizedBox(height: 8),
              MyFilledButton(
                  text: 'Ver detalles',
                  iconData: TablerIcons.eye,
                  isDesingInverse: true,
                  height: 30.h,
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        context: context,
                        builder: (context) => const AppDraggable());
                  })
            ],
            if (action) ...[
              const SizedBox(height: 8),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                      child: CustomOutlineButton(
                    buttonText: 'Rechazar',
                    iconData: TablerIcons.x,
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12)),
                    onPressed: () {
                      CustomDialogs.showDialogRechazar();
                    },
                  )),
                  const SizedBox(width: 8),
                  Expanded(
                      child: MyFilledButton(
                    text: 'Aceptar',
                    iconData: TablerIcons.check,
                    isDesingInverse: true,
                    height: 30.h,
                    onPressed: () {
                      CustomDialogs.showDialogAceptar();
                    },
                  ))
                ],
              )
            ],
            if (pedido) ...[
              const SizedBox(height: 8),
              ListTile(
                tileColor: AppColors.dark50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                title: Text(
                  'Pedio Snack',
                  style: AppTextStyles.base.primaryColor.w500,
                ),
                subtitle: Text('#S-23934-323-00',
                    style: AppTextStyles.base.blackColor.s10.dark500Color),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Ir al pedido',
                        style: AppTextStyles.base.primaryColor.w500),
                    const Icon(TablerIcons.chevron_right,
                        color: AppColors.primary)
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
