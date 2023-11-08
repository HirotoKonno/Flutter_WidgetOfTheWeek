import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShortcutView extends StatefulWidget {
  const ShortcutView({
    super.key,
  });

  @override
  createState() => _ShortcutState();
}

class _ShortcutState extends State<ShortcutView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Shortcuts(
                shortcuts: {
                  SingleActivator(LogicalKeyboardKey.keyA):
                      ButtonActivateIntent(),
                },
                child: ExpansionTile(
                  title: Text('keyA'),
                  children: [
                    Text('keyA'),
                  ],
                ),
              ),
              Shortcuts(
                shortcuts: {
                  SingleActivator(LogicalKeyboardKey.keyB):
                      ButtonActivateIntent(),
                },
                child: ExpansionTile(
                  title: Text('keyB'),
                  children: [
                    Text('keyB'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
