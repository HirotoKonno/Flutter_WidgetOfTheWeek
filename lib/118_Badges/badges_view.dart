import 'package:flutter/material.dart';

class BadgesView extends StatelessWidget {
  const BadgesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Badge(
          backgroundColor: Colors.orange,
          child: Icon(Icons.access_time),
        ),
      ),
    );
  }
}
