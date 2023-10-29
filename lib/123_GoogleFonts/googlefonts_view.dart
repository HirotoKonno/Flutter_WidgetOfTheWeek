import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsView extends StatelessWidget {
  const GoogleFontsView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text(
          'This is Google Fonts',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(color: Colors.blue, letterSpacing: .5),
          ),
        ),
      ),
    );
  }
}
