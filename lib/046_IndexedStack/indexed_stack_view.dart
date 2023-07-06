import 'package:flutter/material.dart';

class IndexedStackView extends StatefulWidget {
  const IndexedStackView({Key? key}) : super(key: key);

  @override
  createState() => _State();
}

class _State extends State<IndexedStackView> {
  var _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.lightGreen,
            child: const Text('A'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.lightBlue,
            child: const Text('B'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.pink.withOpacity(0.5),
            child: const FlutterLogo(size: 150),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'B',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flutter_dash),
            label: 'flutter',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
