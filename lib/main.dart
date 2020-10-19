import 'package:flutter/material.dart';
import 'package:toutiao/homepage.dart';
import 'package:toutiao/mine.dart';
import 'package:toutiao/xigua.dart';

class MainPage extends StatelessWidget {
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
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 14,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.red),
                title: Text("首页")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call_rounded, color: Colors.red),
                title: Text("西瓜视频")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded, color: Colors.red),
                title: Text("我的")
            )
          ],
          onTap: (int index) {

          },
        ),
      ),
    );
  }
}

/// 主页面多个fragment
class MyHomePage extends StatelessWidget {

  List<Widget> _pageList = [
    HomePage(),
    XiguaPage(),
    MinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return _pageList[0];
  }

}