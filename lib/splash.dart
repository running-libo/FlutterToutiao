import 'dart:async';
import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toutiao/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  MyHomePage() {
    countDown();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.ltr,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 200),
            child: Text("信息创造价值", style: TextStyle(fontSize: 35, color: Colors.red)),
        ),
        FloatingActionButton(
          child: Text("+", style: TextStyle(fontSize: 30)),
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
              return new MainPage();
            }));
          },
        ),
        Container(
          margin: const EdgeInsets.only(top: 380),
          alignment: Alignment.bottomCenter,
          child: Image.asset("images/splash_logo.png", width: 100),
        )
      ],
    );
  }
}

/**
 * 倒计时2秒跳进主页面
 */
void countDown() {
  Timer timer = new Timer(new Duration(seconds: 2), () {
    // 只在倒计时结束时回调
    // Toast.show("跳转页面", context, duration: Toast.LENGTH_SHORT);

  });
}
