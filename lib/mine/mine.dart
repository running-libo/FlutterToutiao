
import 'package:flutter/material.dart';
import 'package:toutiao/login/loginpage.dart';
import 'package:toutiao/mine/applets.dart';
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
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Stack(
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
                    child: Text("你创作的，就是头条")
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Container(
                    width: 65,
                    height: 30,
                    child: OutlineButton(
                      textColor: Colors.red,
                      child: Text("+发布", style: TextStyle(fontSize: 12)),
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
            margin: const EdgeInsets.only(top: 14),
            child: Applets(),
          )
        ],
      ),
    );
  }

}

class MoreService extends StatelessWidget {
  List<String> titles1 = List();
  List<String> titles2 = List();

  MoreService() {
    titles1.add("用户反馈");
    titles1.add("钱包");
    titles1.add("广告推广");
    titles1.add("免流量服务");

    titles2.add("评论");
    titles2.add("点赞");
    titles2.add("夜间模式");
    titles2.add("关注");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(top: 14),
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text("更多服务", style: TextStyle(fontSize: 18)),
              )
            ],
          ),
          MenuRow(titles1),
          MenuRow(titles2)
        ],
      ),
    );
  }

}