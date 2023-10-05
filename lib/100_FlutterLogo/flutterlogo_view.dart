import 'package:flutter/material.dart';

class FlutterLogoView extends StatelessWidget {
  const FlutterLogoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        FlutterLogo(
          size: 100,
          style: FlutterLogoStyle.stacked,
          curve: Curves.bounceInOut,
        ),
        FlutterLogo(
          size: 100,
          style: FlutterLogoStyle.horizontal,
          curve: Curves.bounceIn,
        ),
        FlutterLogo(
          size: 100,
          style: FlutterLogoStyle.markOnly,
          curve: Curves.bounceInOut,
        ),
        FlutterLogo(
          size: 200,
          curve: Curves.bounceInOut,
        )
      ],
    ));
  }
}
