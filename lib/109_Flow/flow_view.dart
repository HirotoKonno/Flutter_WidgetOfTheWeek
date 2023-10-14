import 'package:flutter/material.dart';

class FlowView extends StatefulWidget {
  const FlowView({super.key});

  @override
  createState() => _FlowViewState();
}

class _FlowViewState extends State<FlowView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flow(
          delegate: _FlowViewDelegate(animationController),
          children: [
            FloatingActionButton(
              heroTag: 'menu',
              onPressed: () {
                animationController.status == AnimationStatus.completed
                    ? animationController.reverse()
                    : animationController.forward();
              },
              child: const Icon(Icons.menu),
            ),
            FloatingActionButton(
              heroTag: 'add',
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              heroTag: 'remove',
              onPressed: () {},
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}

class _FlowViewDelegate extends FlowDelegate {
  _FlowViewDelegate(this.animation) : super(repaint: animation);

  final Animation<double> animation;

  @override
  void paintChildren(FlowPaintingContext context) {
    for (var i = context.childCount - 1; i >= 0; i--) {
      final offset = i * animation.value * 50;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          offset,
          offset,
          0,
        ),
      );
    }
  }

  @override
  bool shouldRepaint(covariant _FlowViewDelegate oldDelegate) {
    return animation != oldDelegate.animation;
  }
}
