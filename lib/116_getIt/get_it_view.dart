import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class getIt extends StatefulWidget {
  const getIt({
    super.key,
  });

  @override
  State<getIt> createState() => _GetItState();
}

class _GetItState extends State<getIt> {
  @override
  void initState() {
    super.initState();

    GetIt.I.registerSingleton<SamplePage116Repository>(
      SamplePage116RepositoryImpl(),
    );
  }

  @override
  void dispose() {
    GetIt.I.unregister<SamplePage116Repository>();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final message = GetIt.I.get<SamplePage116Repository>().getMessage();
    return Scaffold(
      appBar: AppBar(
        title: const Text('get_it'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

abstract class SamplePage116Repository {
  String getMessage() {
    throw UnimplementedError();
  }
}

class SamplePage116RepositoryImpl extends SamplePage116Repository {
  @override
  String getMessage() {
    return 'SamplePage116RepositoryImpl.getMessage';
  }
}
