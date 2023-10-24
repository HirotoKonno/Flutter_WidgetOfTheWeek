import 'package:flutter/material.dart';

class DropdownButtonView extends StatefulWidget {
  const DropdownButtonView({
    super.key,
  });

  @override
  createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<DropdownButtonView> {
  int selectedVale = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton<int>(
              value: selectedVale,
              items: const [
                DropdownMenuItem(value: 0, child: Text('A')),
                DropdownMenuItem(value: 1, child: Text('B')),
                DropdownMenuItem(value: 2, child: Text('C')),
                DropdownMenuItem(value: 3, child: Text('D')),
              ],
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                setState(() {
                  selectedVale = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text('ListNumber : $selectedVale'),
          ],
        ),
      ),
    );
  }
}
