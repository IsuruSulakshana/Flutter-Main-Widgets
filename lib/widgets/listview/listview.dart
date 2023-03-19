import 'package:flutter/material.dart';

//First example
class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);
  @override
  _ListViewExampleState createState() => _ListViewExampleState();
}
class _ListViewExampleState extends State<ListViewExample> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'Item 6', 'Item 7', 'Item 8', 'Item 9', 'Item 10'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView(
        children: items.map((String item) {
          return Container(
            margin:const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 6, 255, 6),
              borderRadius: BorderRadius.circular(15.0)
            ),
              width: 300,
              height: 100,
              child: Center(
                child: Text(item),
              ),
            );
        }).toList(),
      ),
    );
  }
}




//Second example
class ContainerListViewExample extends StatefulWidget {
  const ContainerListViewExample({Key? key}) : super(key: key);

  @override
  _ContainerListViewExampleState createState() => _ContainerListViewExampleState();
}

class _ContainerListViewExampleState extends State<ContainerListViewExample> {
  List<Color> colors = [Colors.red, Colors.blue, Colors.green, Colors.yellow, Colors.orange];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container ListView Example'),
      ),
      body: ListView(
        children: colors.map((Color color) {
          return Container(
            height: 100,
            color: color,
            child: Center(
              child: Text(
                color.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

//Third example 
class VerticalListView extends StatefulWidget {
  const VerticalListView({Key? key}) : super(key: key);

  @override
  State<VerticalListView> createState() => _VerticalListViewState();
}

class _VerticalListViewState extends State<VerticalListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.green,
            ),
      ],
    );
  }
}

//Fourth example
class HorizontalListView extends StatefulWidget {
  const HorizontalListView({Key? key}) : super(key: key);

  @override
  State<HorizontalListView> createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 400,
              color: Colors.blue,
            ),
      ],
    );
  }
}

class MyView extends StatefulWidget {
  const MyView({Key? key}) : super(key: key);

  @override
  State<MyView> createState() => _MyViewState();
}

class _MyViewState extends State<MyView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Text("Hello"),
        Text("Hello"),
        Text("Hello"),
      ],
    );
  }
}