import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class ConnectivityView extends StatelessWidget {
  const ConnectivityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text(
          checkConnection() as String,
          style: const TextStyle(fontSize: 90),
        ),
      ],
    ));
  }

  Future<String> checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return "スマホ";
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return "wifi";
    } else {
      return "スマホ&wifi意外";
    }
  }
}
