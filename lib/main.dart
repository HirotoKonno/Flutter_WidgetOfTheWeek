import 'package:flutter/material.dart';

import '095_Flutter_Slidable/flutter_slidable_view.dart';
import '096_RotatedBox/rotated_box_view.dart';
import '097_ExpansionPanel/expansion_panel_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _TestView(),
    );
  }
}

class _TestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Please change SizeBox to target views.
    return const ExpansionPanelView();
  }
}
