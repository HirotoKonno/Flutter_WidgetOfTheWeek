import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GapView extends StatelessWidget {
  const GapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: randomColor(),
              ),
            ),
            const Gap(2),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: randomColor(),
              ),
            ),
            const Gap(4),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: randomColor(),
              ),
            ),
            const Gap(8),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: randomColor(),
              ),
            ),
            const Gap(10),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: randomColor(),
              ),
            ),
            const Gap(12),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: randomColor(),
              ),
            ),
            const Gap(14),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: randomColor(),
              ),
            ),
            const Gap(16),
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: randomColor(),
              ),
            ),
            const Gap(18),
          ],
        ),
      ),
    );
  }

  randomColor() {
    return Color(
      (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
    ).withOpacity(1.0);
  }
}
