import 'package:flutter/material.dart';

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
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 720,
        ),
        BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.red),
                title: Text("首页")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.red),
                title: Text("西瓜视频")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.red),
                title: Text("放映厅")
            )
          ],
        )
      ],
    );
  }

}