import 'package:flutter/material.dart';
import 'package:flutter_main_widgets/widgets/listtile/listtile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Life Meet"),
      ),
      body: Column(
        children: const [
        ThirdListTile(),
        ThirdListTile(),
        ThirdListTile(),
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