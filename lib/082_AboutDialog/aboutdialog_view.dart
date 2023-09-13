import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutDialogView extends StatefulWidget {
  final String title;

  const AboutDialogView({super.key, required this.title});

  @override
  createState() => _AboutState();
}

class _AboutState extends State<AboutDialogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationVersion: '1.0.9',
              applicationIcon: const MyAppIcon(),
              applicationLegalese:
                  'ABCDEFG.',
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('Flutterアプリです'),
                ),
              ],
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Details'),
          ),
        ),
      ),
    );
  }
}

class MyAppIcon extends StatelessWidget {
  static const double size = 32;

  const MyAppIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: SizedBox(
          width: size,
          height: size,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
