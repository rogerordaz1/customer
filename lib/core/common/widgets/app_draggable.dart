import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:app/modules/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';

class AppDraggable extends StatefulWidget {
  const AppDraggable({super.key, this.isEvent = true});
  final bool isEvent;

  @override
  State<AppDraggable> createState() => _AppDraggableState();
}

class _AppDraggableState extends State<AppDraggable> {
  final _sheet = GlobalKey();
  late final _controller = DraggableScrollableController()
    ..addListener(listener);
  final isExpande = false.obs;

  @override
  void dispose() {
    _controller.removeListener(listener);
    _controller.dispose();
    super.dispose();
  }

  void listener() {
    isExpande.value = _controller.size >= 0.65;
    if (_controller.size < .4) {
      Get.back();
    }
  }

  Widget makeDismissible({required Widget child}) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Get.back(),
        child: GestureDetector(onTap: () {}, child: child),
      );

  @override
  Widget build(BuildContext context) {
    return makeDismissible(
      child: DraggableScrollableSheet(
          key: _sheet,
          initialChildSize: .5,
          maxChildSize: .94,
          minChildSize: .3999,
          snap: true,
          snapSizes: const [.5, .94],
          controller: _controller,
          builder: (_, ScrollController scrollController) {
            return Obx(
              () {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16.r)),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: isExpande.value
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(height: 6.h),
                              const Center(child: DraggableIndicator()),
                              SizedBox(height: 12.h),
                              SizedBox(
                                height: 280.h,
                                child: const EventDetailImagesSectionWidget(),
                              ),
                              SizedBox(height: 12.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const EventTextName(
                                      title: 'Paisajes Sin Nombre'),
                                  SizedBox(height: 12.h),
                                  const EventAuthorImgAndName(
                                    authorImg: 'assets/image1.png',
                                    authorName: 'Enrique Casas',
                                    isIconShowing: false,
                                  ),
                                  SizedBox(height: 12.h),
                                  EventDateAndTimeWidget(
                                      isEvent: widget.isEvent),
                                  SizedBox(height: 12.h),
                                  const EventLocationWidget(
                                    title: 'Galería Collage Habana',
                                    subtitle:
                                        'San Rafael No.103 e/ Consulado e Industria',
                                  ),
                                  SizedBox(height: 12.h),
                                  const EventDetailCheckInButtonWidget(),
                                  SizedBox(height: 16.h),
                                  const EventDetailAboutThisEventWidget(),
                                  SizedBox(height: 10.h),
                                  const EventDetailMapLocationSectionWidget(),
                                  SizedBox(height: 10.h),
                                  if (widget.isEvent)
                                    const ShowsInThisEventSection(),
                                ],
                              ),
                            ],
                          )
                        : Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(height: 8),
                              const Center(
                                child: DraggableIndicator(),
                              ),
                              SizedBox(height: 16.h),
                              const EventTextName(title: 'Paisajes Sin Nombre'),
                              SizedBox(height: 16.h),
                              Row(
                                children: [
                                  // TODO: Cambiar por imagen
                                  CircleAvatar(),
                                  const SizedBox(width: 8),
                                  Text('ICAIC', style: AppTextStyles.base)
                                ],
                              ),
                              SizedBox(height: 16.h),
                              EventDateAndTimeWidget(isEvent: widget.isEvent),
                              SizedBox(height: 8.h),
                              const EventLocationWidget(
                                title: 'Galería Collage Habana',
                                subtitle:
                                    'San Rafael No.103 e/ Consulado e Industria',
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                  'El 44 Festival Internacional del Nuevo Cine Latinoamericano incluye una amplia y representativa muestra de cine contemporáneo proveniente del resto del mundo, las actividades de Industria, así como encuentros y seminarios sobre diversos temas de interés cultural y, en especial, cinematográfico.',
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyles.base),
                              const SizedBox(height: 16),
                              MyFilledButton(
                                  text: 'Reservar',
                                  iconData: TablerIcons.ticket,
                                  isDesingInverse: true,
                                  onPressed: () {})
                            ],
                          ),
                  ),
                );
              },
            );
          }),
    );
  }
}
