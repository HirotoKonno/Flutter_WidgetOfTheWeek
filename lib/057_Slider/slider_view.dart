import 'package:flutter/material.dart';

class SliderView extends StatefulWidget {
  const SliderView({Key? key}) : super(key: key);

  @override
  createState() => _SliderState();
}

class _SliderState extends State<SliderView> {
  double _sliderValue = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$_sliderValue'),
              Slider(
                value: _sliderValue,
                min: 0,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
                activeColor: Colors.blue,
                inactiveColor: Colors.pink,
                thumbColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
