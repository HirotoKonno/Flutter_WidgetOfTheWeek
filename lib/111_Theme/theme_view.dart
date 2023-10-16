import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.orange[100],
          textTheme: GoogleFonts.emilysCandyTextTheme(),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)),
      darkTheme: ThemeData.dark(),
      home: const SizedBox(),
    );
  }
}

