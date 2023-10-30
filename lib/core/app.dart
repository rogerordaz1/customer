// add app class to inittialize getmaterialapp
import 'package:app/core/app_pages.dart';
import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/global_bindings.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomerApp extends StatelessWidget {
  const CustomerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(328, 640),
      builder: (context, child) {
        return GestureDetector(
          onTap: () => Common.dismissKeyboard(),
          child: GetMaterialApp(
            useInheritedMediaQuery: true,
            // locale: DevicePreview.locale(context),
            locale: const Locale('es'),
            localizationsDelegates: const [
              // AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [Locale('es')],
            builder: DevicePreview.appBuilder,
            title: 'La Papeleta',
            debugShowCheckedModeBanner: false,
            theme: AppThemes.themeData,
            initialRoute: AppPages.initial,
            getPages: AppPages.routes,
            initialBinding: GlobalBindings(),
          ),
        );
      },
    );
  }
}
