import 'package:flutter/material.dart';

class ExpansionPanelView extends StatefulWidget {
  const ExpansionPanelView({super.key});

  @override
  createState() => _ExpansionPaneState();
}

class _ExpansionPaneState extends State<ExpansionPanelView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ExpansionTile(
            title: const Text('Check Me'),
            onExpansionChanged: (bool changed) {
              setState(() {
                isChecked = false;
              });
            },
            children: <Widget>[
              CheckboxListTile(
                value: isChecked,
                onChanged: (checked) {
                  setState(() {
                    isChecked = checked!;
                  });
                },
                title: const Text('選択A'),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text('詳細'),
            children: <Widget>[
              SizedBox(
                height: 50,
                child: Text('AAAAAAAAAAAAAAAAAAAAA'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
