import 'package:flutter/material.dart';

class SemanticsView extends StatelessWidget {
  const SemanticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Semantics(
            button: true,
            enabled: true,
            label: 'Semantics Button called by TalkBack',
            child: Container(
              color: Colors.blue,
              height: 50,
              width: 150,
              child: const Center(
                child: Text('Tap me'),
              ),
            ),
          ),
      ),
    );
  }
}
