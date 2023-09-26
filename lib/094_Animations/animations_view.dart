import 'dart:ui';

import 'package:flutter/material.dart';

class AnimationView extends StatefulWidget {
  const AnimationView({super.key});

  @override
  createState() => _AnimationsState();
}

class _AnimationsState extends State<AnimationView> {
  Alignment _alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedAlign(
        alignment: _alignment,
        duration: const Duration(seconds: 1),
        child: Container(color: Colors.red, width: 200, height: 200),
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            if (_alignment == Alignment.center) {
              _alignment = Alignment.bottomLeft;
            } else {
              _alignment = Alignment.center;
            }
          });
        },
      ),
    );
  }
}
