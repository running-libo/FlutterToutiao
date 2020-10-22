
import 'package:flutter/cupertino.dart';
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
        child: listView);
  }

}