import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorView extends StatefulWidget {
  const CupertinoActivityIndicatorView({
    super.key,
  });

  @override
  State<CupertinoActivityIndicatorView> createState() =>
      _CupertinoActivityIndicatorState();
}

class _CupertinoActivityIndicatorState
    extends State<CupertinoActivityIndicatorView> {
  late final Future<String> _future;

  @override
  void initState() {
    super.initState();
    _future = _loading();
  }

  Future<String> _loading() async {
    await Future<void>.delayed(
      const Duration(seconds: 20),
    );
    return 'Done';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FutureBuilder<String>(
            future: _future,
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const CupertinoActivityIndicator();
              }
              if (snapshot.hasError) {
                return const Icon(
                  Icons.error,
                  color: Colors.red,
                );
              }
              return Text(snapshot.data ?? '');
            },
          ),
        ),
      ),
    );
  }
}
