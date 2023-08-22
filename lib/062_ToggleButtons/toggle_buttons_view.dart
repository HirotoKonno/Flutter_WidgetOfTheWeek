import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleButtonsView extends StatefulWidget {
  const ToggleButtonsView({super.key});

  @override
  createState() => _ToggleState();
}

class _ToggleState extends State<ToggleButtonsView> {
  final _toggleList = <bool>[false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ToggleButtons(
          isSelected: _toggleList,
          onPressed: (index) {
            setState(() {
              _toggleList[index] = !_toggleList[index];
            });
          },
          children: const [
            Icon(Icons.format_italic),
            Icon(Icons.format_bold),
            Icon(Icons.format_underlined),
            FlutterLogo(size: 50,)
          ],
        ),
      ),
    );
  }
}