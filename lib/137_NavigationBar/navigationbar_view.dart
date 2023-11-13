import 'package:flutter/material.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({
    super.key,
  });

  @override
  NavigationBarViewState createState() => NavigationBarViewState();
}

class NavigationBarViewState extends State<NavigationBarView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationBarView with Material 3'),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.pink,
        selectedIndex: _selectedIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onDestinationSelected: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
