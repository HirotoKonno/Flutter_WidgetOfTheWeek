// import 'package:flutter/material.dart';
//
// class HomeWidget extends StatefulWidget {
//   const HomeWidget({super.key});
//
//   @override
//   createState() => _HomeWidgetState();
// }
//
// class _HomeWidgetState extends State<HomeWidget> {
//   final messageController = TextEditingController();
//
//   // ウィジェットにデータを送る処理
//   Future<void> _sendData() async {
//     await Future.wait([
//       HomeWidget.saveWidgetData<String>('title', "Widget Title"),
//       HomeWidget.saveWidgetData<String>('message', ref.read(messageProvider)),
//     ]);
//   }
//
//   // ウィジェットを更新する処理
//   Future<void> _updateWidget() async {
//     await HomeWidget.updateWidget(
//       name: 'HomeScreenWidgetProvider',
//       androidName: 'HomeScreenWidgetProvider',
//       iOSName: 'HomeScreenWidget',
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("HomeScreenWidget App"),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(30),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextField(
//                 decoration: const InputDecoration(
//                   label: Text("Text to display widget"),
//                   border: OutlineInputBorder(),
//                 ),
//                 controller: messageController,
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   ref.read(messageProvider.notifier).state =
//                       messageController.text;
//                   _sendData();
//                   _updateWidget();
//                 },
//                 child: const Text("Update widget"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }