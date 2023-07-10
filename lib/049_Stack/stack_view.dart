import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 120,
                height: 120,
                color: Colors.green,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
