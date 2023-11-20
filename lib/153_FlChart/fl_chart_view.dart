import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FlChartView extends StatefulWidget {
  const FlChartView({super.key});

  @override
  createState() => FlChartViewState();
}

class FlChartViewState extends State<FlChartView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PieChart(
      PieChartData(
        startDegreeOffset: 270,
        sections: [
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              color: Colors.pink,
              value: 2 / 24 * 100,
              titlePositionPercentageOffset: 0.7,
              title: "A",
              titleStyle: const TextStyle(fontSize: 50),
              radius: 160),
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              color: Colors.white,
              value: 1 / 24 * 100,
              titlePositionPercentageOffset: 0.8,
              titleStyle: const TextStyle(fontSize: 50),
              title: "B",
              radius: 160),
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              color: Colors.orange,
              value: 7 / 24 * 100,
              titlePositionPercentageOffset: 0.5,
              title: "C",
              titleStyle: const TextStyle(fontSize: 50),
              radius: 160),
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              color: Colors.yellow,
              value: 2 / 24 * 100,
              titleStyle: const TextStyle(fontSize: 50),
              titlePositionPercentageOffset: 0.7,
              title: "D",
              radius: 160),
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              color: Colors.grey,
              value: 2 / 24 * 100,
              title: "F",
              titleStyle: const TextStyle(fontSize: 50),
              titlePositionPercentageOffset: 0.7,
              radius: 160),
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              color: Colors.green,
              value: 1 / 24 * 100,
              title: "G",
              titleStyle: const TextStyle(fontSize: 30),
              titlePositionPercentageOffset: 0.7,
              radius: 160),
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              color: Colors.blue,
              value: 5 / 24 * 100,
              title: "H",
              titleStyle: const TextStyle(fontSize: 50),
              titlePositionPercentageOffset: 0.6,
              radius: 160),
        ],
        sectionsSpace: 0,
        centerSpaceRadius: 0,
      ),
    ));
  }
}
