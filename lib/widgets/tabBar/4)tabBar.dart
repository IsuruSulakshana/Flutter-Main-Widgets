import 'package:flutter/material.dart';

class FacebookTabView extends StatefulWidget {
  const FacebookTabView({Key? key}) : super(key: key);

  @override
  _FacebookTabViewState createState() => _FacebookTabViewState();
}

class _FacebookTabViewState extends State<FacebookTabView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 237, 19),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[300]!, width: 1)),
              ),
              child: TabBar(
                controller: _tabController,
                labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
                unselectedLabelStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.blue,
                indicator: BoxDecoration(
                  color: Colors.blue,
                ),
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(icon: Icon(Icons.home, color: Colors.white), text: 'Home'),
                  Tab(icon: Icon(Icons.people, color: Colors.white), text: 'Friends'),
                  Tab(icon: Icon(Icons.live_tv, color: Colors.white), text: 'Watch'),
                  Tab(icon: Icon(Icons.shopping_cart, color: Colors.white), text: 'Marketplace'),
                  Tab(icon: Icon(Icons.menu, color: Colors.white), text: 'Menu'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildTabContent('Home'),
                  _buildTabContent('Friends'),
                  _buildTabContent('Watch'),
                  _buildTabContent('Marketplace'),
                  _buildTabContent('Menu'),
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
