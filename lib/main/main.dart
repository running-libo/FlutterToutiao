import 'package:flutter/material.dart';
import 'package:toutiao/home/homepage.dart';
import 'package:toutiao/mine/mine.dart';
import 'package:toutiao/xigua/xigua.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MainPage> {
  // This widget is the root of your application.
  int _currentIndex = 0;

  List<Widget> _pageList = [
    HomePage(),
    XiguaPage(),
    MinePage(),
  ];

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.black54),
        activeIcon: Icon(Icons.home, color: Colors.red),
        title: Text("首页", style: TextStyle(fontSize: 12))
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.video_call_rounded, color: Colors.black54),
        activeIcon: Icon(Icons.video_call_rounded, color: Colors.red),
        title: Text("西瓜视频", style: TextStyle(fontSize: 12))
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_rounded, color: Colors.black54),
        activeIcon: Icon(Icons.account_circle_rounded, color: Colors.red),
        title: Text("我的", style: TextStyle(fontSize: 12))
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 14,
          unselectedFontSize: 12,
          selectedItemColor: Colors.red,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: bottomItems,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
        ),
      ),
    );
  }

}
