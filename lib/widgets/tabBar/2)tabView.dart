// ignore: file_names
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MyTabView extends StatefulWidget {
  const MyTabView({Key? key}) : super(key: key);

  @override
  _MyTabViewState createState() => _MyTabViewState();
}

class _MyTabViewState extends State<MyTabView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tab View'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Tab 1'),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Tab 1')),
          Center(child: Text('Tab 2')),
          Center(child: Text('Tab 3')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your code here
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
