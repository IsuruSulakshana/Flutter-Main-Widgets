import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_main_widgets/screen/myScreen.dart';
import 'package:flutter_main_widgets/widgets/column/column.dart';
import 'package:flutter_main_widgets/widgets/container/container.dart';
import 'package:flutter_main_widgets/widgets/row/row.dart';
import 'package:flutter_main_widgets/widgets/scaffold/scaffold.dart';


import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const myScreen(),
    );
  }
}
