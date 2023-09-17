import 'package:flutter/material.dart';

class InteractiveViewerView extends StatefulWidget {
  const InteractiveViewerView({super.key});

  @override
  State<InteractiveViewerView> createState() => _InteractiveViewerViewState();
}

class _InteractiveViewerViewState extends State<InteractiveViewerView> {
  final TransformationController _controller = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ColoredBox(
            color: Colors.pink,
            child: InteractiveViewer(
              transformationController: _controller,
              constrained: true,
              panEnabled: true,
              scaleEnabled: true,
              boundaryMargin: const EdgeInsets.all(32.0),
              minScale: 0.5,
              maxScale: 3.0,
              child: const FlutterLogo(size: 500),
            ),
          ),
          FilledButton(
              onPressed: () {
                setState(() {
                  _controller.value = Matrix4.identity();
                });
              },
              child: const Text('Reset')),
        ],
      ),
    );
  }
}
