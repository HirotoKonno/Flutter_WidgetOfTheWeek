import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorFilteredView extends StatelessWidget {
  const ColorFilteredView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.green, BlendMode.modulate),
        child: FlutterLogo(
          size: 100,
        ),
      ),
      ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.green, BlendMode.darken),
        child: FlutterLogo(
          size: 100,
        ),
      ),
      ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.green, BlendMode.clear),
        child: FlutterLogo(
          size: 100,
        ),
      ),
      ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.green, BlendMode.difference),
        child: FlutterLogo(
          size: 100,
        ),
      ),
      ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.green, BlendMode.colorBurn),
        child: FlutterLogo(
          size: 100,
        ),
      ),
      ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.green, BlendMode.dstATop),
        child: FlutterLogo(
          size: 100,
        ),
      ),
      ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.green, BlendMode.dstOver),
        child: FlutterLogo(
          size: 100,
        ),
      ),
      ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.green, BlendMode.xor),
        child: FlutterLogo(
          size: 100,
        ),
      ),
    ]);
  }
}
