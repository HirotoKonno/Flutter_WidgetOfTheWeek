import 'package:flutter/material.dart';

class ListWheelScrollViewSample extends StatefulWidget {
  const ListWheelScrollViewSample({super.key});

  @override
  createState() => ListWheelScrollState();
}

class ListWheelScrollState extends State<ListWheelScrollViewSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RotatedBox(
            quarterTurns: -1,
            child: ListWheelScrollView(
                offAxisFraction: -0.5,
                diameterRatio: 1.4,
                itemExtent: 200,
                children: [
                  for (var i in List.generate(10, (i) => i))
                    RotatedBox(
                        quarterTurns: 1,
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.2,
                            color: Colors.blue[100],
                            child: Center(
                                child: Text("Index: $i",
                                    style: const TextStyle(fontSize: 30)))))
                ])));
  }
}
