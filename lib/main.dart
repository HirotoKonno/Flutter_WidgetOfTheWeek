import 'package:flutter/material.dart';

import '123_GoogleFonts/googlefonts_view.dart';
import '124_SharedPreferences/shared_preferences_view.dart';
import '125_FocusableActionDetector/focusable_action_detector_view.dart';

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
    return const FocusableActionDetectorView();
  }
}
