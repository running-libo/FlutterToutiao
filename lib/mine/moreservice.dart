
import 'package:flutter/material.dart';
import 'package:toutiao/mine/minemenu.dart';

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
          MenuRow(titles1, Colors.black87),
          MenuRow(titles2, Colors.black87)
        ],
      ),
    );
  }

}