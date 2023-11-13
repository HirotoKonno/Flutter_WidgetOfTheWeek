import 'package:flutter/material.dart';

import '133_Sortcut/sortcut_view.dart';
import '134_Actions/actions_view.dart';
import '136_FutureBuilder/future_builder_view.dart';
import '137_GoRouter/go_router_view.dart';

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
    return const GoRouterView();
  }
}
