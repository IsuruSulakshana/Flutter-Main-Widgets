import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(30, (index) {
            return Container(
              color: const Color.fromARGB(255, 9, 129, 142),
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
