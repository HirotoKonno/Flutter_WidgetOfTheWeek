import 'package:flutter/material.dart';

class FutureBuilderView extends StatefulWidget {
  const FutureBuilderView({
    super.key,
  });

  @override
  createState() => FutureBuilderState();
}

class FutureBuilderState extends State<FutureBuilderView> {
  late Future<String> _success;
  late Future<String> _failure;

  @override
  void initState() {
    super.initState();

    _success = _successFuture();
    _failure = _failureFuture();
  }

  Future<String> _successFuture() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    return 'Success!!';
  }

  Future<String> _failureFuture() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    try {
      throw Exception('Error');
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('FutureBuilder Success'),
              FutureBuilder(
                future: _success,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.info,
                            color: Colors.red,
                          ),
                          Text(snapshot.error?.toString() ?? ''),
                        ],
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                        Text(snapshot.data?.toString() ?? ''),
                      ],
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text('FutureBuilder Error'),
              FutureBuilder(
                future: _failure,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.info,
                            color: Colors.red,
                          ),
                          Text(snapshot.error?.toString() ?? ''),
                        ],
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                        Text(snapshot.data?.toString() ?? ''),
                      ],
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
