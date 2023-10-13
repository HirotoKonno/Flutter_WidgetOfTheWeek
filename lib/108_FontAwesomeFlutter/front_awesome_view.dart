import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FrontAwesomeView extends StatelessWidget {
  const FrontAwesomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: FaIcon(
            FontAwesomeIcons.twitter,
            size: 200,
            color: Colors.orange,
            semanticLabel: "Flutter",
          ),
        ),
      ),
    );
  }
}
