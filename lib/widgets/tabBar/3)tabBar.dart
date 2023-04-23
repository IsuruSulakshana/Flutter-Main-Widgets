import 'package:flutter/material.dart';

class CustomTabView extends StatefulWidget {
  const CustomTabView({Key? key}) : super(key: key);

  @override
  _CustomTabViewState createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> with SingleTickerProviderStateMixin {
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
      backgroundColor: Color.fromARGB(255, 242, 8, 226),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 60,
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Color.fromARGB(255, 18, 236, 40),
                  borderRadius: BorderRadius.circular(30),
                ),
                tabs: [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildTabContent('Tab 1'),
                  _buildTabContent('Tab 2'),
                  _buildTabContent('Tab 3'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(String text) {
    return Center(
      child: Text(text, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
    );
  }
}
