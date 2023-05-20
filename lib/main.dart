import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_main_widgets/screen/1)%20Screen.dart';
import 'package:flutter_main_widgets/screen/dialPad.dart';
import 'package:flutter_main_widgets/screen/testScreen.dart';
import 'package:flutter_main_widgets/screen/myScreen.dart';
import 'package:flutter_main_widgets/screen/widgetTestingScreen.dart';
import 'package:flutter_main_widgets/widgets/bottomSheet/1)%20bottomSheet.dart';
import 'package:flutter_main_widgets/widgets/bottomSheet/2)%20bottomSheet.dart';
import 'package:flutter_main_widgets/widgets/bottomSheet/3)%20bottomSheet.dart';
import 'package:flutter_main_widgets/widgets/bottomSheet/4)%20bottomSheet.dart';
import 'package:flutter_main_widgets/widgets/column/column.dart';
import 'package:flutter_main_widgets/widgets/container/container.dart';
import 'package:flutter_main_widgets/widgets/root/2)%20root.dart';
import 'package:flutter_main_widgets/widgets/row/row.dart';
import 'package:flutter_main_widgets/widgets/scaffold/scaffold.dart';


import 'package:device_preview/device_preview.dart';
import 'package:flutter_main_widgets/widgets/tabBar/1)tabBar.dart';
import 'package:flutter_main_widgets/widgets/tabBar/2)tabView.dart';
import 'package:flutter_main_widgets/widgets/tabBar/3)tabBar.dart';
import 'package:flutter_main_widgets/widgets/tabBar/4)tabBar.dart';

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
      home: Root1(),
      //home: const WidgetTesting(),
      //home: const myScreen(),
    );
  }
}
