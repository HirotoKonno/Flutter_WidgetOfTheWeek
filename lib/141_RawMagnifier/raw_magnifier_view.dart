import 'package:flutter/material.dart';

class RawMagnifierView extends StatefulWidget {
  const RawMagnifierView({
    super.key,
  });

  @override
  RawMagnifierState createState() => RawMagnifierState();
}

class RawMagnifierState extends State<RawMagnifierView> {
  Offset? position;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    position = details.localPosition;
                  });
                },
                onPanEnd: (details) {
                  setState(() {
                    position = null;
                  });
                },
                child: const Text(
                  "Do your users need to see parts of your app bigger? Make your app more accessible with a custom magnifier!Do your users need to see parts of your app bigger? Make your app more accessible with a custom magnifier!Do your users need to see parts of your app bigger? Make your app more accessible with a custom magnifier!Do your users need to see parts of your app bigger? Make your app more accessible with a custom magnifier!Do your users need to see parts of your app bigger? Make your app more accessible with a custom magnifier!Do your users need to see parts of your app bigger? Make your app more accessible with a custom magnifier!Do your users need to see parts of your app bigger? Make your app more accessible with a custom magnifier!Do your users need to see parts of your app bigger? Make your app more accessible with a custom magnifier!Do your users need to see parts of your app bigger? Make your app more accessible with a custom magnifier!Do your users need to see parts of your app bigger? Make your app more accessible with a custom magnifier!",
                ),
              ),
              if (position != null)
                Positioned(
                  left: position!.dx,
                  top: position!.dy,
                  child: const RawMagnifier(
                    decoration: MagnifierDecoration(
                      shape: StarBorder(
                        side: BorderSide(
                          color: Colors.pink,
                          width: 2,
                        ),
                      ),
                    ),
                    magnificationScale: 2,
                    size: Size(128, 128),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
