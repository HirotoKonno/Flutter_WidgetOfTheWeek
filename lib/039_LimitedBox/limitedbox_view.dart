import 'dart:math';

import 'package:flutter/material.dart';

class SpacerView extends StatelessWidget {
  const SpacerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            for (var i = 0; i < 10; i++)
              LimitedBox(
                maxHeight: 100,
                child: Container(
                  color: randomColor(),
                ),
              )
          ],
        ),
      ),
    );
  }

  Color randomColor() {
    return Color(
      (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
    ).withOpacity(1);
  }
}
