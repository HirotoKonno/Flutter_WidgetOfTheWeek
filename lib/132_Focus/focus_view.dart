import 'package:flutter/material.dart';

class FocusView extends StatefulWidget {
  const FocusView({
    super.key,
  });

  @override
  createState() => _FocusViewState();
}

class _FocusViewState extends State<FocusView> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                focusNode: _focusNode,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  _focusNode.requestFocus();
                },
                child: const Text('Focus'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
