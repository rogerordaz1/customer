import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/modules/auth/login/routes/login_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:app/core/theme/themes.dart';
import 'package:app/modules/settings/settings.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'widgets/modal_storage.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Center(
                      child: CircleAvatar(radius: 40),
                    ),
                    const SizedBox(height: 8),
                    Text('+5555555', style: AppTextStyles.base.w400),
                    const SizedBox(height: 16),
                    MyFilledButton(
                        iconData: TablerIcons.chevron_right,
                        text: 'Editar Perfil',
                        onPressed: () {
                          Get.toNamed(
                              '${SettingsRoutes.settings}${SettingsRoutes.editPerfile}');
                        })
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('Ajustes generales', style: AppTextStyles.base.w500),
            const SizedBox(height: 16),
            ValueListenableBuilder(
              valueListenable: Hive.box('settings').listenable(),
              builder: (_, box, __) {
                final loadingImage =
                    box.get('loadingImage', defaultValue: true);
                final limit = box.get('limit', defaultValue: 'Sin límite');
                final notification =
                    box.get('notification', defaultValue: true);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      horizontalTitleGap: 8,
                      leading: Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary,
                        ),
                        child: const Icon(TablerIcons.photo_check,
                            color: AppColors.white),
                      ),
                      tileColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      title: Text('Cargar Imágenes', style: AppTextStyles.base),
                      trailing: CupertinoSwitch(
                          value: loadingImage,
                          activeColor: AppColors.primary,
                          onChanged: (value) async {
                            await box.put('loadingImage', value);
                          }),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      onTap: () {
                        showModelStorage(context);
                      },
                      horizontalTitleGap: 8,
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
                      tileColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      title: Text('Almacenamiento de\ndatos sin conexión',
                          style: AppTextStyles.base),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(limit,
                              style: AppTextStyles.base.primaryColor.w500),
                          const Icon(TablerIcons.chevron_right,
                              color: AppColors.primary),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      horizontalTitleGap: 8,
                      leading: Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary,
                        ),
                        child: const Icon(TablerIcons.bell,
                            color: AppColors.white),
                      ),
                      tileColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      title: Text('Recibir notificaciones',
                          style: AppTextStyles.base),
                      trailing: CupertinoSwitch(
                          value: notification,
                          activeColor: AppColors.primary,
                          onChanged: (value) async {
                            await box.put('notification', value);
                          }),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      onTap: () {
                        Get.toNamed(
                            '${SettingsRoutes.settings}${SettingsRoutes.checkCode}');
                      },
                      horizontalTitleGap: 8,
                      leading: Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary,
                        ),
                        child: const Icon(TablerIcons.password_user,
                            color: AppColors.white),
                      ),
                      tileColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      title:
                          Text('Cambiar contraseña', style: AppTextStyles.base),
                      trailing: const Icon(TablerIcons.chevron_right,
                          color: AppColors.primary),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      onTap: () {
                        Get.toNamed(
                            '${SettingsRoutes.settings}${SettingsRoutes.soporte}');
                      },
                      horizontalTitleGap: 8,
                      leading: Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary,
                        ),
                        child: const Icon(TablerIcons.message_dots,
                            color: AppColors.white),
                      ),
                      tileColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      title:
                          Text('Contactar soporte', style: AppTextStyles.base),
                      trailing: const Icon(TablerIcons.chevron_right,
                          color: AppColors.primary),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      onTap: () async {
                        final exit = await Common.showConfirm(
                            title: 'Aviso',
                            content:
                                'Estas a punto de salir de la sessión. ¿Confirma para salir?');
                        if (exit) {
                          Get.offNamed(LoginRoutes.login);
                        }
                      },
                      horizontalTitleGap: 8,
                      leading: Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.red400,
                        ),
                        child: const Icon(TablerIcons.logout,
                            color: AppColors.white),
                      ),
                      tileColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      title: Text('Cerrar sessión', style: AppTextStyles.base),
                      trailing: const Icon(TablerIcons.chevron_right,
                          color: AppColors.primary),
                    ),
                    const SizedBox(height: 8),
                  ],
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
