import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        crossAxisCount: 2,
        children: const [
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
          GridItem(),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.lightGreenAccent,
    );
  }
}