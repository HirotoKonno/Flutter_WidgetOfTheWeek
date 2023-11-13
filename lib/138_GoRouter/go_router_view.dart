import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterView extends StatefulWidget {
  const GoRouterView({
    super.key,
  });

  @override
  GoRouterViewState createState() => GoRouterViewState();
}

class GoRouterViewState extends State<GoRouterView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }


  final router = GoRouter(
    initialLocation: '/main',
    routes: [
      GoRoute(
        path: '/main',
        builder: (context, state) => const SamplePage138Main(),
        routes: [
          GoRoute(
            path: 'sub1',
            builder: (context, state) => const A(),
          ),
          GoRoute(
            path: 'sub2',
            builder: (context, state) => const B(),
            routes: [
              GoRoute(
                path: 'sub3',
                builder: (context, state) => const C(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class SamplePage138Main extends StatelessWidget {
  const SamplePage138Main({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('A'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                context.go('/main/A');
              },
            ),
            ListTile(
              title: const Text('B'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                context.go('/main/B');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class A extends StatelessWidget {
  const A({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A'),
      ),
    );
  }
}

class B extends StatelessWidget {
  const B({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/main/A/B');
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class C extends StatelessWidget {
  const C({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/main');
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}