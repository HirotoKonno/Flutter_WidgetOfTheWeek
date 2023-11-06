import 'package:flutter/material.dart';

class TextStyleView extends StatelessWidget {
  const TextStyleView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text("Hello, Flutter",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.yellow,backgroundColor: Colors.white)),
      ),
    );
  }
}
