import 'package:flutter/material.dart';

class AutocompleteView extends StatefulWidget {
  const AutocompleteView({
    super.key,
  });

  @override
  createState() => _AutocompleteState();
}

class _AutocompleteState extends State<AutocompleteView> {
  final data = <String>[
    'test A',
    'test B',
    'test C',
    'test D',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutocompleteView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Autocomplete<String>(
          optionsBuilder: (textEditingValue) {
            if (textEditingValue.text.isEmpty) {
              return const Iterable.empty();
            }
            return data.where((x) {
              return x.contains(textEditingValue.text);
            });
          },
          onSelected: (option) {},
        ),
      ),
    );
  }
}