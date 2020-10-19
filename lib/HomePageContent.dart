import 'package:flutter/material.dart';
import 'package:toutiao/homepageSubPage.dart';

// 页面内容
class HomePageContent extends StatefulWidget {
  HomePageContent({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageContentState createState() => HomePageContentState();
}

class HomePageContentState extends State<HomePageContent>
    with SingleTickerProviderStateMixin {
  List tabs = ["关注", "推荐", "热榜", "要闻", "新时代", "抗疫"];
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
            controller: tabController,
            isScrollable: true,
            tabs: <Widget>[
              Tab(text: "关注"),
              Tab(text: "推荐"),
              Tab(text: "热榜"),
              Tab(text: "要闻"),
              Tab(text: "新时代"),
              Tab(text: "抗疫"),
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
              HomepageSubpage(),
              HomepageSubpage(),
            ]
        ));
  }
}
