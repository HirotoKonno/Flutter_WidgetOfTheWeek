import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RefreshIndicatorView extends StatelessWidget {
  const RefreshIndicatorView({
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
          child: RefreshIndicator(
            color: Colors.yellow,
            backgroundColor: Colors.green,
            strokeWidth: 5,
            edgeOffset: 20,
            onRefresh: _refresh,
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
      ),
    );
  }

  Future<void> _refresh() {
    return Future.delayed(const Duration(seconds: 2));
  }
}
