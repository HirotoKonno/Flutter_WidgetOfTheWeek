import 'package:flutter/material.dart';

class CheckboxListTileView extends StatefulWidget {
  bool _checked = false;

  @override
  createState() => _ChangeCheckBoxTitleState();
}

class _ChangeCheckBoxTitleState extends State<CheckboxListTileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CheckboxListTile(
        title: const Text("Check me!!!!"),
        secondary: const FlutterLogo(
          size: 100,
        ),
        controlAffinity: ListTileControlAffinity.platform,
        value: widget._checked,
        onChanged: (bool? value) {
          setState(() {
            widget._checked = value!;
          });
        },
        activeColor: Colors.orange,
        checkColor: Colors.teal,
      )),
    );
  }
}
