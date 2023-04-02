import 'package:flutter/material.dart';
import 'package:flutter_main_widgets/widgets/banner/widget_of_the_day.dart';
import 'package:flutter_main_widgets/widgets/listtile/listtile.dart';
import 'package:flutter_main_widgets/widgets/radio/1)radio.dart';
import 'package:flutter_main_widgets/widgets/radio/2)radio.dart';
import 'package:flutter_main_widgets/widgets/textForm/1)%20textForm.dart';
import 'package:flutter_main_widgets/widgets/textForm/2)%20textForm.dart';
import 'package:flutter_main_widgets/widgets/textForm/3)%20textForm.dart';
import 'package:flutter_main_widgets/widgets/textForm/4)%20textForm.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 252, 251, 251),
        shadowColor: Color.fromARGB(255, 11, 160, 224),
        backgroundColor: Color.fromARGB(255, 15, 162, 188),
        centerTitle: true,
        title: const Text(
          "Radio Button",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 20.0,
        ),
      ),
      body: WidgetOfTheDayBanner(),
    );
  }
}

class SampleTile extends StatefulWidget {
  SampleTile({Key? key}) : super(key: key);

  @override
  State<SampleTile> createState() => _SampleTileState();
}

class _SampleTileState extends State<SampleTile> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(Icons.home),
        title: Text("Isuru"),
        subtitle: Text("Hello , how are you!"),
        trailing: Text("12/06/2023"),
      ),
    );
  }
}