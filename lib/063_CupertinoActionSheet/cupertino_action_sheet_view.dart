import 'package:flutter/cupertino.dart';

class CupertinoActionSheetView extends StatelessWidget {
  const CupertinoActionSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton.filled(
          child: const Text('Push This'),
          onPressed: () async {
            await _showActionSheet(context);
          },
        ),
      ),
    );
  }

  Future<String?> _showActionSheet(BuildContext context) {
    return showCupertinoModalPopup<String>(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: const Text('こんにちわ'),
          message: const Text('Hello'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: const Text('A'),
              onPressed: () {
                Navigator.pop(context, 'A');
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('B'),
              onPressed: () {
                Navigator.pop(context, 'B');
              },
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('cancel'),
          ),
        );
      },
    );
  }
}
