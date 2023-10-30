import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';

class Item {
  Item({required this.name, required this.icon});
  final String name;
  final IconData icon;
}

final categories = {
  "Arte": <Item>[
    Item(name: 'Teatro', icon: TablerIcons.masks_theater),
    Item(name: 'Cine', icon: TablerIcons.movie),
    Item(name: 'Danza', icon: TablerIcons.friends),
    Item(name: 'Música', icon: TablerIcons.music),
  ],
  "Deporte": <Item>[
    Item(name: 'Beisbol', icon: TablerIcons.masks_theater),
    Item(name: 'Fútbol', icon: TablerIcons.movie),
    Item(name: 'Boxeo', icon: TablerIcons.friends),
    Item(name: 'Baloncesto', icon: TablerIcons.music),
  ],
  "Gastronomía": <Item>[
    Item(name: 'Beisbol', icon: TablerIcons.masks_theater),
    Item(name: 'Fútbol', icon: TablerIcons.movie),
    Item(name: 'Boxeo', icon: TablerIcons.friends),
    Item(name: 'Baloncesto', icon: TablerIcons.music),
  ]
};

class FilterCategory extends StatelessWidget {
  const FilterCategory({super.key});

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
                    ...categories.keys.map((e) => Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(e, style: AppTextStyles.base.w600),
                            SizedBox(height: 8.h),
                            ...categories[e]!.map((i) => Container(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  child: RadioListTile<String>(
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                      secondary: Icon(i.icon),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      tileColor: AppColors.white,
                                      value: i.name,
                                      title: Text(i.name,
                                          style: AppTextStyles.base),
                                      groupValue: null,
                                      onChanged: (value) {}),
                                )),
                            SizedBox(height: 8.h),
                          ],
                        )),
                    SizedBox(height: 50.h)
                    // categories.forEach((key, value) => Text('Arte', style: AppTextStyles.base.w600),),
                  ],
                ),
              ),
              CustomBackButton()
            ],
          ),
        ),
      ),
    );
  }
}
