import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class SensorsPlusView extends StatefulWidget {
  const SensorsPlusView({super.key});

  @override
  createState() => _SensorsPlusState();
}

class _SensorsPlusState extends State<SensorsPlusView> {
  String _userAccelerometerValues = "";
  String _gyroscopeValues = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(_userAccelerometerValues,
            style: Theme.of(context).textTheme.titleLarge),
        Text(_gyroscopeValues, style: Theme.of(context).textTheme.titleLarge),
      ],
    ));
  }

  @override
  void initState() {
    super.initState();
    userAccelerometerEvents.listen(
      (UserAccelerometerEvent event) {
        setState(() {
          _userAccelerometerValues = "加速度\n${event.x}\n${event.y}\n${event.z}";
        });
      },
    );
    gyroscopeEvents.listen(
      (GyroscopeEvent event) {
        setState(() {
          _gyroscopeValues = "角速度\n${event.x}\n${event.y}\n${event.z}";
        });
      },
    );
  }
}
