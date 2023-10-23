import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class PathProviderView extends StatefulWidget {
  const PathProviderView({
    super.key,
  });

  @override
  createState() => _PathProviderState();
}

class _PathProviderState extends State<PathProviderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('getApplicationDocumentsDirectory'),
            FutureBuilder(
              future: getApplicationDocumentsDirectory(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return const Icon(
                    Icons.error,
                    color: Colors.red,
                  );
                }
                return Text(snapshot.data!.path);
              },
            ),
            const SizedBox(height: 20),
            const Text('getApplicationSupportDirectory'),
            FutureBuilder(
              future: getApplicationSupportDirectory(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return const Icon(
                    Icons.error,
                    color: Colors.red,
                  );
                }
                return Text(snapshot.data!.path);
              },
            ),
          ],
        ),
      ),
    );
  }
}
