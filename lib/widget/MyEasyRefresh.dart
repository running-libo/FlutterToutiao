
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

//刷新加载控件封装
class MyEasyRefresh extends StatelessWidget {
  EasyRefreshController easyRefreshController;
  Widget listView;

  MyEasyRefresh(this.listView) {
    easyRefreshController = EasyRefreshController();
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        controller: easyRefreshController,
        enableControlFinishRefresh: false,
        enableControlFinishLoad: false,
        header: ClassicalHeader(
            textColor: Colors.black87,
            refreshText: "往下拉，往下拉",
            refreshedText: "刷新完成",
            refreshingText: "正在刷新",
            refreshReadyText: "快放手"
        ),
        footer: ClassicalFooter(
            textColor: Colors.black87,
            loadText: "往上拉，往上拉",
            loadedText: "加载完成",
            loadingText: "正在加载",
            loadReadyText: "快放手"
        ),
        onRefresh: () async {
          print("刷新完成");
        },
        onLoad: () async {
          print("加载完成");
        },
        child: listView);
  }

}