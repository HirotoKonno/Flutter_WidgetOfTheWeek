import 'package:flutter/material.dart';

class AnimatedPaddingView extends StatefulWidget {
  const AnimatedPaddingView({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingView> createState() => _State();
}

class _State extends State<AnimatedPaddingView> {
  double _padding = 50;

  void _onTap() {
    setState(() {
      if (_padding == 50) {
        _padding = 0;
      } else {
        _padding = 50;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPaddingView'),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          child: AnimatedPadding(
            padding: EdgeInsets.all(_padding),
            duration: const Duration(seconds: 1),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTap),
    );
  }
}
