import 'package:flutter/material.dart';

class DividerView extends StatelessWidget {
  const DividerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            FlutterLogo(size: 100),
            Divider(
              height: 100,
              thickness: 20,
              color: Colors.pink,
              indent: 20,
              endIndent: 30,
            ),
            FlutterLogo(size: 100),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.white,
              indent: 100,
              endIndent: 100,
            ),
            FlutterLogo(size: 100),
          ],
        ),
      ),
    );
  }
}
