import 'package:flutter/material.dart';
import 'package:toutiao/homepageSubPage.dart';

// 页面内容
class PageContent extends StatefulWidget {
  PageContent({Key key, this.title}) : super(key: key);

  final String title;

  @override
  PageContentState createState() => PageContentState();
}

class PageContentState extends State<PageContent>
    with SingleTickerProviderStateMixin {
  List tabTitle = ["关注", "推荐", "热榜", "要闻"];
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: tabTitle.length, vsync: this);
    tabController.addListener(() {
      var index = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(text: "关注"),
              Tab(text: "推荐"),
              Tab(text: "热榜"),
              Tab(text: "要闻"),
            ],
          ),
        ),
        body: TabBarView(
            controller: tabController,
            children: <Widget>[
              HomepageSubpage(),
              HomepageSubpage(),
              HomepageSubpage(),
              HomepageSubpage(),
            ]
        ));
  }
}
