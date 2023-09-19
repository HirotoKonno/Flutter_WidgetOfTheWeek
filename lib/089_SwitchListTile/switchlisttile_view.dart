import 'package:flutter/material.dart';

class SwitchListTileView extends StatelessWidget {
  const SwitchListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("ListTile"),
              subtitle: Text("Test1"),
              leading: Icon(Icons.coffee_sharp),
              trailing: FlutterLogo(
                size: 100,
              ),
            ),
            SwitchListTile(
              title: Text("SwitchListTile"),
              subtitle: Text("Test2"),
              secondary: FlutterLogo(
                size: 100,
              ),
              controlAffinity: ListTileControlAffinity.leading,
              value: true,
              onChanged: null,
            ),
          ],
        ),
      ),
    );
  }
}
