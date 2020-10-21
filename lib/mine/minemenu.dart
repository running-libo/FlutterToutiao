
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MineMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 120,
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisSize: MainAxisSize.max,  //match_parent
          children: [
            Column(children: [
              Icon(Icons.notification_important_rounded),
              Text("消息通知")
            ],),
            Column(children: [
              Icon(Icons.star_border),
              Text("收藏")
            ],),
            Column(children: [
              Icon(Icons.history),
              Text("浏览历史")
            ],),
            Column(children: [
              Icon(Icons.download_rounded),
              Text("下载管理")
            ],),
          ],
        )
    );
  }

}