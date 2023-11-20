import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CallbackShortcutsView extends StatefulWidget {
  const CallbackShortcutsView({super.key});

  @override
  State<CallbackShortcutsView> createState() =>
      CallbackShortcutsState();
}

class CallbackShortcutsState extends State<CallbackShortcutsView> {
  int numCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CallbackShortcuts(
          bindings: <ShortcutActivator, VoidCallback>{
            const SingleActivator(LogicalKeyboardKey.arrowUp): () {
              setState((){
                numCount = numCount + 1;
              });
            },
            const SingleActivator(LogicalKeyboardKey.arrowDown): () {
              setState((){
                numCount = numCount - 1;
              });
            },
          },
          child: Focus(
            autofocus: true,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$numCount", style: const TextStyle(fontSize: 120),)
                ],
              ),
          ),
        ));
  }
}