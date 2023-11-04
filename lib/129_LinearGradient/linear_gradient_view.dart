import 'dart:math';

import 'package:flutter/material.dart';

class LinearGradientView extends StatefulWidget {
  const LinearGradientView({
    super.key,
  });

  @override
  createState() => _LinearGradientState();
}

class _LinearGradientState extends State<LinearGradientView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('LinearGradient'),
            centerTitle: true,
            stretch: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    transform: GradientRotation(pi / 4),
                    stops: [0.1, 0.2, 0.5, 0.75],
                    colors: [
                      Color(0xff027DFD),
                      Color(0xff4100E0),
                      Color(0xff1CDAC5),
                      Color(0xffF2DD22),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [
                      Color(0xff027DFD),
                      Color(0xff4100E0),
                      Color(0xff1CDAC5),
                      Color(0xffF2DD22),
                    ],
                    stops: [0.1, 0.5, 0.50, 0.75],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    transform: GradientRotation(pi / 4),
                  ).createShader(bounds),
                  child: const SizedBox(
                    child: Center(
                      child: Text(
                        'Hello Flutter World!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
