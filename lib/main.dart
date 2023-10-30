import 'package:app/core/app.dart';
import 'package:app/core/runner/runner.dart';
import 'package:device_preview/device_preview.dart';

void main() => MainRunner.run(
    appBuilder: () => DevicePreview(
        enabled: false, builder: (context) => const CustomerApp()));
