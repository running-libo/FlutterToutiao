import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toutiao/main/main.dart';

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

  //倒计时2秒跳进主页面
  void countDown(BuildContext context) {
    new Timer(new Duration(seconds: 1), () {
      // 只在倒计时结束时回调
      Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
        return new MainPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    countDown(context);

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
        Container(
          margin: const EdgeInsets.only(top: 380),
          alignment: Alignment.bottomCenter,
          child: Image.asset("images/splash_logo.png", width: 100),
        )
      ],
    );
  }
}
