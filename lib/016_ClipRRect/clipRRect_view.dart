import 'package:flutter/material.dart';

class ClipRRectView extends StatelessWidget {
  const ClipRRectView({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            constraints: const BoxConstraints(
              maxWidth: 300,
              maxHeight: 100,
            ),
            color: Colors.white,
            child: const Text(''),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Colors.orange,
              child: const Text(''),
            ),
          ),
          // ClipRRect あり　（四つの角で丸みの度合いが異なる） ・・・②
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(0.0),
              bottomLeft: Radius.circular(40.0),
            ),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Colors.pink,
              child: const Text(''),
            ),
          ),
        ],
      ),
    );
  }
}