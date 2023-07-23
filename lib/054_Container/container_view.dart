import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              margin: const EdgeInsets.all(25.0),
              padding: const EdgeInsets.all(40.0),
              child: const Text("Container 円"),
            ),
            Container(
              child: Text("Container 斜め"),
              color: Colors.blue,
              width: 200.0,
              height: 200.0,
              transform: Matrix4.rotationZ(0.05),
            )
          ],
        ),
      ),
    );
  }
}
