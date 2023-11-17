import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimateView extends StatefulWidget {
  const AnimateView({
    super.key,
  });

  @override
  createState() => AnimateViewState();
}

class AnimateViewState extends State<AnimateView> {
  Offset? position;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const FlutterLogo(size: 400,)
            .animate(onPlay: (controller) => controller.repeat())
            .shimmer(delay: 4000.ms, duration: 1800.ms)
            .shake(hz: 4, curve: Curves.easeInOutCubic)
            .scale(
          begin: const Offset(1, 1),
          end: const Offset(1.1, 1.1),
          duration: 600.ms,
        )
            .then(delay: 600.ms)
            .scale(
          begin: const Offset(1, 1),
          end: const Offset(1 / 1.1, 1 / 1.1),
        ),
      ),
    );
  }
}
