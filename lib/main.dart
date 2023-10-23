import 'package:flutter/material.dart';

import '113_GestureDetector/gesture_fetecto_view.dart';
import '115_PathProvider/path_provider_view.dart';
import '117_Baseline/baseline_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: _TestView(),
    );
  }
}

class _TestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Please change SizeBox to target views.
    return const BaseLine();
  }
}
