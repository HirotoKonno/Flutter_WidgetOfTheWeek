import 'package:flutter/material.dart';

class ClipPathView extends StatelessWidget {
  const ClipPathView({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: TestClipper(),
        child: Container(
          color: Colors.lightGreen,
          height: 200,
          width: 200,
        ));
  }
}

class TestClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width * 0.5, size.height * 0);
    path.lineTo(size.width * 0.39, size.height * 0.35);
    path.lineTo(size.width * 0.02, size.height * 0.35);
    path.lineTo(size.width * 0.32, size.height * 0.57);
    path.lineTo(size.width * 0.21, size.height * 0.91);
    path.lineTo(size.width * 0.5, size.height * 0.7);
    path.lineTo(size.width * 0.79, size.height * 0.91);
    path.lineTo(size.width * 0.68, size.height * 0.57);
    path.lineTo(size.width * 0.98, size.height * 0.35);
    path.lineTo(size.width * 0.61, size.height * 0.35);
    path.lineTo(size.width * 0.5, size.height * 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
