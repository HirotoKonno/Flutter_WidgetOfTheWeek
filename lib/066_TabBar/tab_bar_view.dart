import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  createState() => _TabBarState();
}

class _TabBarState extends State<TabView> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBarView'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.accessibility)),
            Tab(icon: Icon(Icons.access_alarm)),
            Tab(icon: Icon(Icons.accessible_sharp)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(child: Text('accessibility', style: TextStyle(fontSize: 50))),
          Center(child: Text('access_alarm', style: TextStyle(fontSize: 50))),
          Center(child: Text('accessible_sharp', style: TextStyle(fontSize: 50))),
        ],
      ),
    );
  }
}