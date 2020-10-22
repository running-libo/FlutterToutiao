
import 'package:flutter/material.dart';
import 'package:toutiao/login/loginpage.dart';
import 'package:toutiao/mine/applets.dart';
import 'package:toutiao/mine/minemenu.dart';
import 'moreservice.dart';

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
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                    width: 120,
                    height: 120,
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
          ),
          MineMenu(),
          Container(
            color: Colors.white,
            height: 50,
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("你创作的，就是头条", style: TextStyle(fontSize: 15))
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Container(
                    width: 69,
                    height: 30,
                    child: OutlineButton(
                      textColor: Colors.red,
                      child: Text("+发布", style: TextStyle(fontSize: 13)),
                      borderSide: BorderSide(color: Colors.red, style: BorderStyle.solid),
                      onPressed: () {
                        print("OutlineButton Click");
                      },
                    ),
                  )
                )
              ],
            ),
          ),
          MoreService(),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(top: 14, bottom: 20),
            child: Applets(),
          )
        ],
      ),
    );
  }

}