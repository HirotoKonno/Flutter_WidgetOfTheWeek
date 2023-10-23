import 'package:flutter/material.dart';

class BaseLine extends StatelessWidget {
  const BaseLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColoredBox(
              color: Colors.red,
              child: Text('BaseLine None'),
            ),
            SizedBox(height: 20),
            ColoredBox(
              color: Colors.red,
              child: Baseline(
                baseline: 100,
                baselineType: TextBaseline.alphabetic,
                child: Text('BaseLine 100'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
