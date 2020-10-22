
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MyWebView extends StatefulWidget {

  _MyWebView createState() => _MyWebView();

}

class _MyWebView extends State {

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(url: "https://www.baidu.com",
      // 允许网页缩放
      withZoom: true,
      // 允许LocalStorage
      withLocalStorage: true,
      withJavascript: true,)
  }

}