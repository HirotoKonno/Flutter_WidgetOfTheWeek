import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RepaintBoundaryView extends StatefulWidget {
  const RepaintBoundaryView({
    super.key,
  });

  @override
  createState() => _RepaintBoundaryState();
}

class _RepaintBoundaryState extends State<RepaintBoundaryView> {
  @override
  void initState() {
    super.initState();
    debugRepaintRainbowEnabled = true;
  }

  @override
  void dispose() {
    debugRepaintRainbowEnabled = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RepaintBoundary(
                child: FlutterLogoRotate(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FlutterLogoRotate extends StatefulWidget {
  const FlutterLogoRotate({
    super.key,
  });

  @override
  createState() => _FlutterLogoRotateState();
}

class _FlutterLogoRotateState extends State<FlutterLogoRotate>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    animation = Tween<double>(
      begin: 0,
      end: 2 * pi,
    ).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        child: const FlutterLogo(
          size: 150,
        ),
        builder: (context, child) {
          return Transform.rotate(
            angle: animation.value,
            child: child,
          );
        },
      ),
    );
  }
}
