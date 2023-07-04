import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPositionedView extends StatefulWidget {
  const AnimatedPositionedView({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedView> createState() => _DemoPageState();
}

class _DemoPageState extends State<AnimatedPositionedView> {
  var position = 0.0;

  void stepUp() {
    setState(() {
      position += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 400),
            bottom: position,
            child: const FlutterLogo(size: 100),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: stepUp,
        child: const Icon(Icons.arrow_upward),
      ),
    );
  }
}
