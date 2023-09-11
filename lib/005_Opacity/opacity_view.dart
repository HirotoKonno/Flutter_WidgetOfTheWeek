import 'package:flutter/material.dart';

class OpacityView extends StatelessWidget {
  const OpacityView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomRow(text: "Off Opacity"),
            SizedBox(height: 10.0),
            Opacity(
              opacity: 0.25,
              child: CustomRow(text: "On Opacity"),
            ),
            SizedBox(height: 10.0),
            CustomRow(text: "Off Opacity"),
          ],
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow(
      {super.key, this.textColor = Colors.white,
      this.backgroundColor = Colors.indigo,
      required this.text});

  final Color textColor;
  final Color backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: 100.0,
      width: 200.0,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
