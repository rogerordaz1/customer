import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
//import 'package:flutter_dotenv/flutter_dotenv.dart';

typedef AppBuilder = Widget Function();

mixin MainRunner {
  static T? _runZoned<T>(T Function() body) => runZonedGuarded<T>(
        body,
        (e, st) {},
      );

  static void run({
    required AppBuilder appBuilder,
  }) {
    _runZoned(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        HttpOverrides.global = MyHttpOverrides();

        //  await dotenv.load(fileName: ".env");
        runApp(appBuilder());
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    HttpClient client = super.createHttpClient(context);
    client.badCertificateCallback = (cert, host, port) => true;
    return client;
  }
}
