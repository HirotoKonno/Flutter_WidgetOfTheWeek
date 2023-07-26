import 'package:flutter/material.dart';

class SelectableTextView extends StatelessWidget {
  const SelectableTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FlutterLogo(
              size: 400,
            ),
            SelectableText(
              "I am Flutter",
              style: TextStyle(fontSize: 50),
              showCursor: true,
              cursorColor: Colors.pink,
              cursorRadius: Radius.circular(5),
            ),
          ],
        ),
      ),
    );
  }
}
