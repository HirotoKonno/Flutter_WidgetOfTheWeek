import 'package:flutter/material.dart';

class FocusableActionDetectorView extends StatefulWidget {
  const FocusableActionDetectorView({
    super.key,
  });

  @override
  createState() => _FocusableActionDetectorState();
}

class _FocusableActionDetectorState extends State<FocusableActionDetectorView> {
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    message = 'onTap';
                  });
                },
                child: FocusableActionDetector(
                  child: const FlutterLogo(size: 100,),
                  onFocusChange: (value) {
                    setState(() {
                      message = 'onFocusChange($value)';
                    });
                  },
                  onShowFocusHighlight: (value) {
                    setState(() {
                      message = 'onShowFocusHighlight($value)';
                    });
                  },
                  onShowHoverHighlight: (value) {
                    setState(() {
                      message = 'onShowHoverHighlight($value)';
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
