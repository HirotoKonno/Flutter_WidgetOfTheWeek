import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AsyncView extends StatelessWidget {
  const AsyncView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton.filled(
          child: const Text('Push me'),
          onPressed: () async {
            await Future.delayed(const Duration(seconds: 5));
            await _showButton(context);
          },
        ),
      ),
    );
  }

  Future<String?> _showButton(BuildContext context) {
    return showCupertinoModalPopup<String>(
      context: context,
      builder: (context) {
        return const TextButton(onPressed: null, child: Text("After 5sec"));
      },
    );
  }
}
