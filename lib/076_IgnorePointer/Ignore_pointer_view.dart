import 'package:flutter/material.dart';

class IgnorePointerView extends StatefulWidget {
  const IgnorePointerView({super.key});

  @override
  createState() => _IgnorePointerState();
}

class _IgnorePointerState extends State<IgnorePointerView> {
  int _counter = 0;
  var _ignoring = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('If enable this check can not push the plus button'),
              ],
            ),
            Checkbox(
                value: _ignoring,
                onChanged: (value) {
                  setState(() {
                    _ignoring = value ?? false;
                  });
                }),
          ],
        ),
      ),
      floatingActionButton: IgnorePointer(
        ignoring: _ignoring,
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
