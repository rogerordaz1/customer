import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:app/modules/home/widgets/widgets.dart';
import 'package:app/modules/search/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';

final Map<String, IconData> map = {
  'Fecha': TablerIcons.calendar_due,
  'Categoria': TablerIcons.category_2,
  'Artista': TablerIcons.palette,
  'Lugar': TablerIcons.plane,
};

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = Get.find<MySearchController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              //? Searh Page Header.
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: AppTextField(
                      hintText: "Buscar eventos",
                      controller: controller.searhEditController,
                      hintStyle: AppTextStyles.base.s16,
                      isSearchTextfield: true,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 35.h,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        map.length,
                        (index) => Padding(
                          padding:
                              EdgeInsets.only(left: index == 0 ? 16.w : 10.w),
                          child: FilterPill(
                            text: map.keys.elementAt(index),
                            iconData: map.values.elementAt(index),
                            bgColor: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h),

              //?? Search Page Content Body.
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'Sugerencias para ti',
                        style: AppTextStyles.base.s14.w500,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.only(bottom: 40.h),
                        itemCount: 10,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: const SugestedEventsCardWidget(),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SugestedEventsCardWidget extends StatelessWidget {
  const SugestedEventsCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        height: 100.h,
        child: Padding(
          padding: EdgeInsets.all(8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6.r)),
                    image: const DecorationImage(
                      image: AssetImage('assets/image1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Festival Internacional del Nuevo Cine Latinoamericano',
                        maxLines: 2,
                        style: AppTextStyles.base.s14.w500.copyWith(
                          color: AppColors.compartirColorBlack,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Container(
                      // height: 35.h,
                      width: 95.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.dark50,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: const DateAndTimeWidgetItem(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
