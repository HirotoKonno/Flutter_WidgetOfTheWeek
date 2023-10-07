import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextKitView extends StatelessWidget {
  const AnimatedTextKitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
            child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Hello world!',
              textStyle: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 2000),
            ),
          ],
          totalRepeatCount: 4,
          pause: const Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        )));
  }
}
