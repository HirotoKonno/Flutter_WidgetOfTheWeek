import 'package:flutter/material.dart';

class PaddingView extends StatelessWidget {
  const PaddingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Wrap(
          direction: Axis.horizontal,
          // alignment: WrapAlignment.center,
          spacing: 10.0,
          runAlignment: WrapAlignment.spaceBetween,
          runSpacing: 30.0,
          children: [
            Container(width: 100, height: 50, color: Colors.red),
            const Padding(
              padding: EdgeInsets.only(top: 50, right: 50, bottom: 0, left: 50),
              child: Text('Padding!!'),
            ),
            Container(width: 100, height: 50, color: Colors.green),
            Container(width: 100, height: 50, color: Colors.blue),
            Container(width: 100, height: 50, color: Colors.yellow),
            Container(width: 100, height: 50, color: Colors.orange),
            Container(width: 100, height: 50, color: Colors.red),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text('Padding'),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(width: 100, height: 50, color: Colors.green),
            ),
            Container(width: 100, height: 50, color: Colors.blue),
            Container(width: 100, height: 50, color: Colors.yellow),
            Container(width: 100, height: 50, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
