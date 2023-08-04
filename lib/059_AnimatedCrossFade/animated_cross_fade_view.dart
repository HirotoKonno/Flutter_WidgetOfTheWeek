import 'package:flutter/material.dart';

class AnimatedCrossFadeView extends StatefulWidget {
  const AnimatedCrossFadeView({super.key});

  @override
  createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadeView> {
  bool showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              firstChild: const FlutterLogo(size: 100),
              secondChild: const FlutterLogo(size: 200),
              duration: const Duration(seconds: 1),
              crossFadeState: showFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showFirst = !showFirst; // bool 値を切り替える
                });
              },
              child: const Text('CHANGE'),
            ),
          ],
        ),
      ),
    );
  }
}
