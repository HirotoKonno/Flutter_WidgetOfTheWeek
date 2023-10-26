import 'package:flutter/material.dart';

class StatefulBuilderView extends StatefulWidget {
  const StatefulBuilderView({super.key});

  @override
  createState() => _StatefulBuilderState();
}

class _StatefulBuilderState extends State<StatefulBuilderView> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) {
              return StatefulBuilder(builder: (context, setState) {
                return SimpleDialog(
                    contentPadding: const EdgeInsets.all(0.0),
                    titlePadding: const EdgeInsets.all(0.0),
                    title: SizedBox(
                      height: 400,
                      child: Scaffold(
                        appBar: AppBar(
                          title: const Text(
                            'Using setState',
                            style: TextStyle(fontSize: 15.0),
                          ),
                          centerTitle: true,
                        ),
                        body: Center(
                            child: Text(
                          '$_counter',
                          style: const TextStyle(fontSize: 40.0),
                        )),
                        floatingActionButton: FloatingActionButton(
                          child: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              _counter++;
                            });
                          },
                        ),
                      ),
                    ));
              });
            },
          );
        },
      ),
    );
  }
}
