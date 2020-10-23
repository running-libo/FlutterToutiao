
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MyWebView extends StatefulWidget {

  _MyWebView createState() => _MyWebView();

}

class _MyWebView extends State {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: WebviewScaffold(url: "https://3w.huanqiu.com/a/a4d1ef/40LVKxv2Tow?agt=20&tt_group_id=6885158772294353415",
            // 允许网页缩放
            withZoom: true,
            // 允许LocalStorage
            withLocalStorage: true,
            withJavascript: true),
      )
    );
  }

}