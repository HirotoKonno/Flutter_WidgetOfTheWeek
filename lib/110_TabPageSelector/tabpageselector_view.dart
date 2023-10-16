import 'package:flutter/material.dart';

class TabPageSelectorView extends StatefulWidget {
  const TabPageSelectorView({
    super.key,
  });

  @override
  State<TabPageSelectorView> createState() => _TabPageSelectorState();
}

class _TabPageSelectorState extends State<TabPageSelectorView>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  final icons = const <IconData>[
    Icons.accessibility,
    Icons.coffee_sharp,
    Icons.safety_divider,
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: icons.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TabBarView(
              controller: tabController,
              children: icons
                  .map(
                    (icon) => Center(
                      child: Icon(
                        icon,
                        size: 100,
                      ),
                    ),
                  )
                  .toList(),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 0,
              child: Center(
                child: TabPageSelector(
                  controller: tabController,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
