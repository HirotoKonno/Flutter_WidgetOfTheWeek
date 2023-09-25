import 'dart:ui';

import 'package:flutter/material.dart';

class PhysicalModelView extends StatelessWidget {
  const PhysicalModelView({super.key});

  @override
  Widget build(BuildContext context) {
    return const PhysicalModel(
      color: Colors.black,
      shadowColor: Colors.pink,
      elevation: 8.0,
      shape: BoxShape.circle,
      child: CircleAvatar(
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
