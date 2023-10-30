import 'package:flutter/material.dart';
import 'package:app/core/theme/themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:hive_flutter/hive_flutter.dart';

final box = Hive.box('settings');

Future<void> showModelStorage(BuildContext context) async {
  // final controller = Get.find<SettingsController>();

  Get.bottomSheet(
    Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
            color: AppColors.dark50,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            )),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 6,
                decoration: BoxDecoration(
                  color: const Color(0xffBABABA),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('Modificar almacenamiento de datos',
                style: AppTextStyles.base.w500),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onTap: () async {
                  await box.put('limit', 'Sin límite');
                  if (Get.isBottomSheetOpen!) Get.back();
                },
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                horizontalTitleGap: 8,
                tileColor: AppColors.red400,
                leading: Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary,
                  ),
                  child: const Icon(TablerIcons.device_sd_card,
                      color: AppColors.white),
                ),
                title: Text('Sin limite', style: AppTextStyles.base.w500),
                trailing: const Icon(TablerIcons.chevron_right),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white),
              child: ListTile(
                onTap: () async {
                  await box.put('limit', '20 MB');
                  if (Get.isBottomSheetOpen!) Get.back();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                horizontalTitleGap: 8,
                tileColor: AppColors.white,
                leading: Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary,
                  ),
                  child: const Icon(TablerIcons.device_sd_card,
                      color: AppColors.white),
                ),
                title: Text('20 MB', style: AppTextStyles.base.w500),
                trailing: const Icon(TablerIcons.chevron_right),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white),
              child: ListTile(
                onTap: () async {
                  await box.put('limit', '30 MB');
                  if (Get.isBottomSheetOpen!) Get.back();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                horizontalTitleGap: 8,
                tileColor: AppColors.white,
                leading: Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary,
                  ),
                  child: const Icon(TablerIcons.device_sd_card,
                      color: AppColors.white),
                ),
                title: Text('30 MB', style: AppTextStyles.base.w500),
                trailing: const Icon(TablerIcons.chevron_right),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white),
              child: ListTile(
                onTap: () async {
                  await box.put('limit', 'Otra cantidad');
                  if (Get.isBottomSheetOpen!) Get.back();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                horizontalTitleGap: 8,
                tileColor: AppColors.white,
                leading: Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary,
                  ),
                  child: const Icon(TablerIcons.device_sd_card,
                      color: AppColors.white),
                ),
                title: Text('Otra cantidad', style: AppTextStyles.base.w500),
                trailing: const Icon(TablerIcons.chevron_right),
              ),
            ),
          ],
        )),
    // isScrollControlled: true,
  );
}
