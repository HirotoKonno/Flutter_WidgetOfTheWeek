import 'package:flutter/material.dart';

class FractionallySizedBoxView extends StatelessWidget {
  const FractionallySizedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FractionallySizedBox(
        widthFactor: 0.6,
        heightFactor: 0.2,
        alignment: FractionalOffset.centerRight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.pink,
              width: 40,
            ),
          ),
        ),
      ),
    );
  }
}
