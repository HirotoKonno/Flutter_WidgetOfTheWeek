import 'package:flutter/material.dart';

class HeroModeView extends StatefulWidget {
  const HeroModeView({
    super.key,
  });

  @override
  State<HeroModeView> createState() => _HeroModeState();
}

class _HeroModeState extends State<HeroModeView> {
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            child: HeroMode(
              enabled: enabled,
              child: const Hero(
                tag: 'flutter_logo',
                child: FlutterLogo(size: 100),
              ),
            ),
            onTap: () {
              Navigator.of(context).push<void>(
                MaterialPageRoute(
                  builder: (context) {
                    return const FlutterLogo(
                      size: 100,
                      style: FlutterLogoStyle.markOnly,
                      curve: Curves.bounceInOut,
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            enabled = !enabled;
          });
        },
        child: enabled
            ? const Icon(Icons.check_box)
            : const Icon(Icons.check_box_outline_blank),
      ),
    );
  }
}
