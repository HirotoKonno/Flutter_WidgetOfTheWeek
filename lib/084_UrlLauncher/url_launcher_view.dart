import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:core';

class UrlLauncherView extends StatefulWidget {
  const UrlLauncherView({super.key});

  @override
  State<StatefulWidget> createState() => _UrlLauncherViewState();
}

class _UrlLauncherViewState extends State<UrlLauncherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('アプリ内'),
            onPressed: () {
              _launchInApp();
            },
          ),
          ElevatedButton(
            child: const Text('ブラウザ'),
            onPressed: () {
              _launchInBrowser();
            },
          ),
        ],
      )),
    );
  }

// アプリ内で開く
  _launchInApp() async {
    const url =
        'https://www.youtube.com/watch?v=qYxRYB1oszw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=67';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
      );
    } else {
      throw 'このURLにはアクセスできません';
    }
  }

// ブラウザで開く
  _launchInBrowser() async {
    const url =
        'https://www.youtube.com/watch?v=qYxRYB1oszw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=67';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'このURLにはアクセスできません';
    }
  }
}
