
import 'package:flutter/material.dart';
import 'package:toutiao/login/loginpage.dart';
import 'package:toutiao/mine/minemenu.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 15, top: 50, right: 15),
        children: <Widget>[
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Image.asset("images/ic_scan.png", width: 20, height: 20)
              ),
              Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Image.asset("images/ic_setting.png", width: 20, height: 20)
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("images/circle_bg.png", width: 20, height: 20)
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                child: Text("登录", style: TextStyle(fontSize: 18)),
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
                    return LoginPage();
                  }));
                },
              ),
            ],
          ),
          MineMenu(),
          Container(
            color: Colors.white,
            height: 50,
            margin: const EdgeInsets.only(top: 14),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("  你创作的，就是头条")
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: OutlineButton(
                    child: Text("+发布"),
                    onPressed: () {
                      print("OutlineButton Click");
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}