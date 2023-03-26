import 'package:flutter/material.dart';
import 'package:flutter_main_widgets/widgets/banner/widget_of_the_day.dart';
import 'package:flutter_main_widgets/widgets/listtile/listtile.dart';
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
        centerTitle: true,
        title: const Text(
          "Text Form",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 20.0,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.menu_outlined
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //const MyForm(),
          //const MyTextForm(),
          //const PopTextForm(),
          const AdvancedTextForm(),

          //Banner
          //AnimatedBanner(),
          Column(
            children: const [
              WidgetOfTheDayBanner(),
            ],
          ),
        ],
      ),
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