import 'package:flutter/material.dart';
import 'package:toutiao/xigua/xiguapageSubPage.dart';

// 页面内容
class XiguaPageContent extends StatefulWidget {
  XiguaPageContent({Key key, this.title}) : super(key: key);

  final String title;

  @override
  XiguaPageContentState createState() => XiguaPageContentState();
}

class XiguaPageContentState extends State<XiguaPageContent>
    with SingleTickerProviderStateMixin {
  List tabs = ["推荐", "热门", "影视", "直播", "游戏", "音乐"];
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: tabs.length, vsync: this);
    tabController.addListener(() {
      var index = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          bottom: TabBar(
            labelColor: Colors.white,
            controller: tabController,
            indicatorColor: Colors.red,
            isScrollable: true,
            tabs: <Widget>[
              Tab(text: "推荐"),
              Tab(text: "热门"),
              Tab(text: "影视"),
              Tab(text: "直播"),
              Tab(text: "游戏"),
              Tab(text: "音乐"),
            ],
          ),
        ),
        body: TabBarView(
            controller: tabController,
            children: <Widget>[
              XiguapageSubpage(),
              XiguapageSubpage(),
              XiguapageSubpage(),
              XiguapageSubpage(),
              XiguapageSubpage(),
              XiguapageSubpage(),
            ]
        ));
  }
}
