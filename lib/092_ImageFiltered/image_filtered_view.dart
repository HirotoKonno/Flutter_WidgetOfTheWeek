import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredView extends StatelessWidget {
  const ImageFilteredView({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.matrix(Matrix4.rotationZ(0.2).storage),
      child: const FlutterLogo(
        size: 100,
      ),
    );
  }
}
