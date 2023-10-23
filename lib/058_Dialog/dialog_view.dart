import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogView extends StatelessWidget {
  const DialogView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TextButton(
        child: const Text('Click Me'),
        onPressed: () {
          _showMessage(context);
        },
      ),
    );
  }
}

void _showMessage(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text("タイトル"),
          content: const Text("メッセージ内容"),
          actions: [
            CupertinoDialogAction(
              isDestructiveAction: true,
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      });
}
