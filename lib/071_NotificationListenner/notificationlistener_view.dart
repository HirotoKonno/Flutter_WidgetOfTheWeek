import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NotificationListenerView extends StatelessWidget {
  const NotificationListenerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (kDebugMode) {
              print(notification.toString());
            }
            return true;
          },
          child: ListView(
            children: List.generate(
              20,
              (index) => ListTile(
                title: Text('index : $index'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
