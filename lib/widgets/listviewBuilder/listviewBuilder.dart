import 'package:flutter/material.dart';

class AdvancedListViewExample extends StatefulWidget {
  const AdvancedListViewExample({Key? key}) : super(key: key);

  @override
  _AdvancedListViewExampleState createState() => _AdvancedListViewExampleState();
}

class _AdvancedListViewExampleState extends State<AdvancedListViewExample> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced ListView Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(items[index]),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: const Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            child: ListTile(
              title: Text(items[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Add action for when user taps on item
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            items.add('New Item');
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
