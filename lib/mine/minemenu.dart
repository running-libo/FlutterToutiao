
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
        height: 90,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 25),
        child: MenuRow(titles1, Colors.red)
    );
  }

}

//服务类型组件
class MenuRow extends StatelessWidget {

  List<String> titles = List();
  Color iconColor = Colors.red;

  MenuRow(this.titles, this.iconColor);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,  //子view空间等分
      mainAxisSize: MainAxisSize.max,  //match_parent
      children: [
        Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 5),
            child: Icon(Icons.notifications_none_outlined, size: 30, color: iconColor),
          ),
          Text(titles[0], style: TextStyle(fontSize: 13))
        ],),
        Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 5),
            child: Icon(Icons.star_border, size: 30, color: iconColor),
          ),
          Text(titles[1], style: TextStyle(fontSize: 13))
        ],),
        Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 5),
            child: Icon(Icons.history, size: 30,  color: iconColor),
          ),
          Text(titles[2], style: TextStyle(fontSize: 13))
        ],),
        Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 5),
            child: Icon(Icons.download_sharp, size: 30, color: iconColor),
          ),
          Text(titles[3], style: TextStyle(fontSize: 13))
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
          AppIcon("images/ic_app_douyin.png"),
          Text("抖音")
        ]),
        Column(children: [
          AppIcon("images/ic_app_bilibili.png"),
          Text("bilibili")
        ]),
        Column(children: [
          AppIcon("images/ic_app_maoyan.png"),
          Text("猫眼")
        ]),
        Column(children: [
          AppIcon("images/ic_app_nestes_music.png"),
          Text("云音乐")
        ])
      ],
    );
  }

}

class AppIcon extends StatelessWidget {
  String asset;

  AppIcon(this.asset);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 3),
      width: 35,
      height: 35,
      child: Image.asset(asset),
    );
  }

}