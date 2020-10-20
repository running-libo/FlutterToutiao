import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CupertinoNavigationBar(
      //   backgroundColor: Colors.white,
      //   middle: const Text("登录"),
      // ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(15),
            child: Image.asset("images/ic_close.png", width: 16, height: 16),
          ),
          Container(
            padding: const EdgeInsets.only(top: 50),
            height: 90,
            child: Image.asset("images/launcher.png"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text("登录你的头条，精彩永不丢失", style: TextStyle(color: Colors.black, fontSize: 16)),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 50),
            child: Text("中国移动认证", style: TextStyle(color: Colors.black54)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text("182****7610", style: TextStyle(color: Colors.black, fontSize: 30)),
          ),
          Container(
            height: 43,
            margin: const EdgeInsets.fromLTRB(55, 30, 55, 0),
            child: RaisedButton(
              child: Text("一键登录"),
              textColor: Colors.white,
              color: Colors.red,
              highlightColor: Colors.red[300],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              onPressed: () {
                //此处添加toast
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Text("登录即同意《中国移动认证服务条款》\n及\"用户协议\"和\"隐私政策\"", textAlign: TextAlign.center, style: TextStyle(fontSize: 13, color: Colors.black54),),
          )
        ],
      ),
    );
  }

}