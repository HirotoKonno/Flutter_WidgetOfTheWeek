import 'package:flutter/material.dart';

import '088_GridView/grid_view.dart';
import '089_SwitchListTile/switchlisttile_view.dart';
import '091_DeviceInfo/device_info_view.dart';
import '092_ImageFiltered/image_filtered_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _TestView(),
    );
  }
}

class _TestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Please change SizeBox to target views.
    return const ImageFilteredView();
  }
}
