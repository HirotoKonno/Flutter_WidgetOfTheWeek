import 'dart:ui';

import 'package:flutter/material.dart';

class RotatedBoxView extends StatelessWidget {
  const RotatedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: FlutterLogo(size: 100),
        ),
        RotatedBox(
          quarterTurns: 2,
          child: FlutterLogo(size: 100),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: FlutterLogo(size: 100),
        ),
        RotatedBox(
          quarterTurns: 4,
          child: FlutterLogo(size: 100),
        ),
      ],
    );
  }
}
