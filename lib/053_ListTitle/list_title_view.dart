import 'package:flutter/material.dart';

class ListTitleView extends StatelessWidget {
  final items = [
    'アイテム1',
    'アイテム2',
    'アイテム3',
    'アイテム4',
    'アイテム5',
    'アイテム6',
    'アイテム7',
    'アイテム8',
    'アイテム9',
    'アイテム10',
    'アイテム11',
    'アイテム12',
    'アイテム13',
    'アイテム14',
    'アイテム15',
  ];

  ListTitleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTitleView'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, int position) {
          return SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(Icons.folder),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(items[position]),
                          Text(items[position]),
                        ],
                      ),
                    ),
                  ),
                  const Icon(Icons.more_vert)
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, _) => const Divider(),
      ),
    );
  }
}
