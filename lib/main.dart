import 'package:flutter/material.dart';

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
    return const SizedBox();
  }
}
