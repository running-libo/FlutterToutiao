
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MineMenu extends StatelessWidget {
  List<String> titles1 = List();

  MineMenu() {
    titles1.add("消息通知");
    titles1.add("收藏");
    titles1.add("浏览历史");
    titles1.add("下载管理");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 80,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 20),
        margin: const EdgeInsets.only(top: 30),
        child: MenuRow(titles1)
    );
  }

}

//服务类型组件
class MenuRow extends StatelessWidget {

  List<String> titles = List();

  MenuRow(this.titles);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,  //子view空间等分
      mainAxisSize: MainAxisSize.max,  //match_parent
      children: [
        Column(children: [
          Icon(Icons.notifications_none_outlined, color: Colors.red),
          Text(titles[0])
        ],),
        Column(children: [
          Icon(Icons.star_border, color: Colors.red),
          Text(titles[1])
        ],),
        Column(children: [
          Icon(Icons.history, color: Colors.red),
          Text(titles[2])
        ],),
        Column(children: [
          Icon(Icons.download_sharp, color: Colors.red),
          Text(titles[3])
        ],),
      ],
    );
  }
}

class AppletMenuRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,  //子view空间等分
      mainAxisSize: MainAxisSize.max,  //match_parent
      children: [
        Column(children: [
          Container(
            width: 30,
            height: 30,
            child: Image.asset("images/launcher.png"),
          ),
          Text("今日头条")
        ]),
        Column(children: [
          Container(
            width: 30,
            height: 30,
            child: Image.asset("images/launcher.png"),
          ),
          Text("今日头条")
        ]),
        Column(children: [
          Container(
            width: 30,
            height: 30,
            child: Image.asset("images/launcher.png"),
          ),
          Text("今日头条")
        ]),
        Column(children: [
          Container(
            width: 30,
            height: 30,
            child: Image.asset("images/launcher.png"),
          ),
          Text("今日头条")
        ])
      ],
    );
  }

}