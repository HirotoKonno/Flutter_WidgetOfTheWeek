import 'package:flutter/material.dart';

class AnimatedWidgetView extends StatefulWidget {
  const AnimatedWidgetView({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedWidgetView> createState() => _AnimatedState();
}

class _AnimatedState extends State<AnimatedWidgetView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation =
      Tween<double>(begin: 1, end: 8).animate(_controller);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ButtonTransition(
                animation: _animation,
              ),
              ButtonTransition2(
                controller: _controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonTransition extends AnimatedWidget {
  const ButtonTransition({super.key, required Animation<double> animation})
      : super(listenable: animation);

  Animation<double> get width => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('Hello'),
      style: OutlinedButton.styleFrom(side: BorderSide(width: width.value)),
      child: const Text('Click me!'),
    );
  }
}

class ButtonTransition2 extends AnimatedWidget {
  ButtonTransition2({super.key, required AnimationController controller})
      : super(listenable: controller);

  Animation<double> get value => listenable as Animation<double>;

  late final _width = Tween<double>(begin: 1, end: 8).animate(value);

  late final _color =
      ColorTween(begin: Colors.blue, end: Colors.yellow).animate(value);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('Hello'),
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: _width.value, color: _color.value!),
      ),
      child: const Text('Click me!'),
    );
  }
}
