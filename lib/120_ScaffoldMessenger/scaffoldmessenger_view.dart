import 'package:flutter/material.dart';

class ScaffoldMessengerView extends StatelessWidget {
  const ScaffoldMessengerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _Test1(),
    );
  }
}

class _Test1 extends StatelessWidget {
  const _Test1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const _Test2(),
              ),
            );
          },
          child: const Text('A'),
        ),
      ),
    );
  }
}

class _Test2 extends StatelessWidget {
  const _Test2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Aに戻るよ'),
                ),
              );
              Navigator.of(context).pop();
            },
            child: const Text('B'),
          );
        }),
      ),
    );
  }
}
