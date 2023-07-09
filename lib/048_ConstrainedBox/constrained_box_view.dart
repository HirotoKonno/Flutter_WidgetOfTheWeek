import 'package:flutter/material.dart';

class ConstrainedBoxView extends StatelessWidget {
  const ConstrainedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints.expand(height: 300.0),
              child: Container(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20.0),
            ConstrainedBox(
              constraints:
                  const BoxConstraints.expand(height: 30.0, width: 30.0),
              child: Container(
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 20.0),

            /// loose
            ConstrainedBox(
              constraints: BoxConstraints.loose(const Size(100.0, 30.0)),
              child: Container(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 80.0,
              height: 20.0,
              child: ConstrainedBox(
                constraints: BoxConstraints.loose(const Size(100.0, 30.0)),
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(100.0, 30.0)),
              child: Container(
                color: Colors.yellow,
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
