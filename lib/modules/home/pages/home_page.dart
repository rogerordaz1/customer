import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';
import '../widgets/custom_navbar/custom_navbar.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scroll = ScrollController();
  final eventsNew = true.obs;
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Obx(() => Stack(
              children: [
                ListView(
                  controller: scroll,
                  padding: EdgeInsets.only(
                      top: 42.h, bottom: 60.h, left: 16.w, right: 16.w),
                  physics: const BouncingScrollPhysics(),
                  children:
                      List.generate(10, (i) => EventCard(isEvent: i % 2 == 0)),
                ),
                eventsNew.value
                    ? Positioned(
                        top: 74,
                        left: 0,
                        right: 0,
                        child: Center(
                            child: FilledButton.icon(
                          onPressed: () {
                            scroll.animateTo(0,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.decelerate);
                            eventsNew.toggle();
                          },
                          icon: const Icon(TablerIcons.chevron_up,
                              color: AppColors.white),
                          label: Text('Nuevos eventos',
                              style: AppTextStyles.base.whiteColor.w500),
                        )))
                    : const SizedBox.shrink(),
                const CustomAppBar(),
              ],
            )),
      ),
    );
  }
}
