import 'dart:async';
import 'package:flutter/material.dart';

class CircularProgressIndicatorView extends StatefulWidget {
  const CircularProgressIndicatorView({super.key});

  @override
  createState() => _CircularProgressIndicatorDemoState();
}

class _CircularProgressIndicatorDemoState
    extends State<CircularProgressIndicatorView> {
  Timer? _timer;
  int _second = 0;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      setState(() {
        _second = DateTime.now().second;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: CircularProgressIndicator(
            value: (_second % 15) / 15,
            strokeWidth: 15,
            color: Colors.pink,
            backgroundColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
