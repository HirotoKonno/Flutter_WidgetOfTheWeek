import 'package:flutter/material.dart';

class DraggableScrollableSheetView extends StatelessWidget {
  const DraggableScrollableSheetView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Center(
              child: Text('裏',style: TextStyle(fontSize: 100),),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 0.5,
              builder: (context, scrollController) {
                return DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: const Column(
                      children: [
                        FlutterLogo(
                          size: 200,
                        ),
                        FlutterLogo(
                          size: 200,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
