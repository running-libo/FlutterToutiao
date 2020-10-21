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
      home: Scaffold(
        body: Container(
          width: 360,
          color: Color(0xffffff00),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Color(0xffff0000),
              ),
              Container(
                width: 50,
                height: 50,
                color: Color(0xff0000ff),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Color(0xff000000),
                    ),
                    SizedBox(
                      height: 50.0,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
