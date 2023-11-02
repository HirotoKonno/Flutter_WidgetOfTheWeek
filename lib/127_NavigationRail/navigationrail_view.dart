import 'package:flutter/material.dart';

class NavigationRailView extends StatefulWidget {
  const NavigationRailView({
    super.key,
  });

  @override
  createState() => _NavigationRailState();
}

class _NavigationRailState extends State<NavigationRailView> {
  int selectedIndex = 0;

  final List<String> messages = [
    'Home',
    'Favorite',
    'Setting',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationRailView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Row(
          children: [
            NavigationRail(
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              labelType: NavigationRailLabelType.all,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text('Favorite'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text('Setting'),
                ),
              ],
            ),
            const VerticalDivider(width: 0),
            Expanded(
              child: Center(
                child: Text(messages[selectedIndex]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
