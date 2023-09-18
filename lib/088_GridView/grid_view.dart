import 'package:flutter/material.dart';

class GridviewSample extends StatelessWidget {
  final List<String> texts = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: texts.length,
        // GridViewを設定する引数を指定
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
        ),
        //指定した要素の数分を生成
        itemBuilder: (context, index) {
          return Container(
            color: Colors.pink,
            child: Center(
                child: Text(
              texts[index],
              style: const TextStyle(fontSize: 39),
            )),
          );
        },
      ),
    );
  }
}
