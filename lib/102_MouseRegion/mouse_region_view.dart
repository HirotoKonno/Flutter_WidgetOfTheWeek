import 'package:flutter/material.dart';

class MouseRegionView extends StatelessWidget {
  const MouseRegionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: MouseRegion(
            cursor: SystemMouseCursors.text,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            onEnter: (event) {
              debugPrint('onEnter ${event.toString()}');
            },
            onHover: (event) {
              debugPrint('onHover ${event.toString()}');
            },
            onExit: (event) {
              debugPrint('onExit ${event.toString()}');
            },
          ),
        ),
      ),
    );
  }
}
