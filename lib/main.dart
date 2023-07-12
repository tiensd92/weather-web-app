import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:weather_app/presentation/presentation.dart';

void main() async {
  usePathUrlStrategy();
  //await setConfigLocator();
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = _MyHttpOverrides();

  if (kIsWeb) {
    // Increase Skia cache size to support bigger images.
    const int megabyte = 1000000;
    SystemChannels.skia
        .invokeMethod('Skia.setResourceCacheMaxBytes', 512 * megabyte);
    await Future<void>.delayed(Duration.zero);
  }

  runApp(const MyApplication());
}

class _MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) => true;
  }
}
