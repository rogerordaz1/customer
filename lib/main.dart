import 'package:app/core/app.dart';
import 'package:app/core/runner/runner.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() => MainRunner.run(
    appBuilder: () => DevicePreview(
        enabled: !kReleaseMode, builder: (context) => const CustomerApp()));
