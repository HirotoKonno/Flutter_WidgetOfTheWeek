import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipOvalView extends StatelessWidget {
  const ClipOvalView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.grey,
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ClipOval(
                  child: FlutterLogo(
                    size: 100,
                  ),
                ),
                const SizedBox(height: 30),
                ClipOval(
                  clipper: _SampleClipper(),
                  child: const FlutterLogo(
                    size: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SampleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 100, 50);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    throw UnimplementedError();
  }
}
