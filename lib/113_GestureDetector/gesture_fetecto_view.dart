import 'package:flutter/material.dart';

class GestureDetectorView extends StatelessWidget {
  const GestureDetectorView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('GestureDetector tapped!');
      },
      onDoubleTap: () {
        print('GestureDetector double tapped!');
      },
      onLongPress: () {
        print('GestureDetector long pressed!');
      },
      child: Container(
        width: 100.0,
        height: 100.0,
        color: Colors.red,
        child: const Center(
          child: Text('Tap Me'),
        ),
      ),
    );
  }
}
