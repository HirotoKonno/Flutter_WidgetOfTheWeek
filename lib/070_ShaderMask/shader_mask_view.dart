import 'package:flutter/material.dart';

class ShaderMaskViewSample extends StatelessWidget {
  const ShaderMaskViewSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
            colors: [Colors.blue, Colors.red, Colors.green]).createShader(
          bounds,
        ),
        child: const Text(
          "今野 博斗",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
