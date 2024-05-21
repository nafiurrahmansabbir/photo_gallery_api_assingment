
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Photo Gallery App',
      theme: ThemeData(
      ),
      home:  const MyHomePage(),
    );

  }


}
