import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  const SampleListView({super.key});

  @override
  Widget build(BuildContext context) {
    var list = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('ListView'),
            ),
            body: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                if (index >= list.length) {
                  list.addAll([
                    "0",
                    "1",
                    "2",
                    "3",
                    "4",
                    "5",
                    "6",
                    "7",
                    "8",
                    "9",
                  ]);
                }
                return _messageItem(list[index]);
              },
            )));
  }

  Widget _messageItem(String title) {
    return Container(
        width: 100,
        decoration: const BoxDecoration(
            border: Border(right: BorderSide(width: 1.0, color: Colors.blue))),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 50.0),
          ),
        ));
  }
}
