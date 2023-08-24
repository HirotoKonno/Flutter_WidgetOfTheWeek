import 'package:flutter/material.dart';

class TweenAnimationBuilderView extends StatelessWidget {
  const TweenAnimationBuilderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: TweenAnimationBuilderState(),
        ),
      ),
    );
  }
}

class TweenAnimationBuilderState extends StatefulWidget {
  const TweenAnimationBuilderState({super.key});

  @override
  State<TweenAnimationBuilderState> createState() =>
      _TweenAnimationBuilderStateState();
}

class _TweenAnimationBuilderStateState
    extends State<TweenAnimationBuilderState> {
  double targetValue = 24.0;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: targetValue),
      duration: const Duration(seconds: 1),
      builder: (BuildContext context, double size, Widget? child) {
        return IconButton(
          iconSize: size,
          color: Colors.black,
          icon: child!,
          onPressed: () {
            setState(() {
              targetValue = targetValue == 200.0 ? 30.0 : 200.0;
            });
          },
        );
      },
      child: const FlutterLogo(size: 200),
    );
  }
}
