import 'package:flutter/material.dart';
import 'package:flutter_main_widgets/widgets/container/container.dart';
import 'package:flutter_main_widgets/widgets/scaffold/scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyScaffold(),
      //home: const MyContainer(),
    );
  }
}
