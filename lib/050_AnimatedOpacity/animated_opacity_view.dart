import 'package:flutter/material.dart';

class AnimatedOpacityView extends StatefulWidget {
  const AnimatedOpacityView({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityView> createState() => _AnimatedSizePageState();
}

class _AnimatedSizePageState extends State<AnimatedOpacityView> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 2000),
              child: const FlutterLogo(
                size: 200,
              ),
            ),
            Text(
              "opacity: $_opacity",
              style: const TextStyle(fontSize: 26),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    if (_opacity == 1) {
                      _opacity = 0;
                    } else {
                      _opacity = 1;
                    }
                  });
                },
                child: const Text("PUSH!!")),
          ],
        ),
      ),
    );
  }
}
