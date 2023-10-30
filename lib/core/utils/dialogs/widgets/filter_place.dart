import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';

class FilterPlace extends StatelessWidget {
  const FilterPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: AppColors.white,
        padding: const EdgeInsets.all(8),
        child: MyFilledButton(
          text: 'Aplicar filtro',
          iconData: TablerIcons.chevron_right,
          onPressed: () {
            // Devolver la categoria en el filtro
            Get.back();
          },
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.only(top: 50.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const AppTextField(
                        isSearchTextfield: true, hintText: 'Buscar lugar'),
                    SizedBox(height: 16.h),
                    ...List.generate(
                      20,
                      (i) => Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: RadioListTile<String>(
                            dense: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                            secondary: const CircleAvatar(),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r)),
                            tileColor: AppColors.white,
                            value: 'Navarro $i',
                            title: Text('Galería Collage Habana',
                                style: AppTextStyles.base.w500),
                            subtitle: Text(
                              'Dirección',
                              style: AppTextStyles.base,
                            ),
                            groupValue: null,
                            onChanged: (value) {}),
                      ),
                    ),
                    SizedBox(height: 50.h)
                    // categories.forEach((key, value) => Text('Arte', style: AppTextStyles.base.w600),),
                  ],
                ),
              ),
              const CustomBackButton()
            ],
          ),
        ),
      ),
    );
  }
}
