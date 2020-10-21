import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text("这是里文本内容", style: TextStyle(fontSize: 16)),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 80,
                  child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602884612610&di=99e5e92e7d3fd95d9c922f29c35f4b61&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2Fb%2F57a2a20321de9.jpg")
              ))
        ],
      )
    );
  }
}
