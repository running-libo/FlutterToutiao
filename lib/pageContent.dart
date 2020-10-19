import 'package:flutter/material.dart';
import 'package:toutiao/homepageSubPage.dart';

// 页面内容
class PageContent extends StatefulWidget {
  PageContent({Key key, this.title}) : super(key: key);

  final String title;

  @override
  PageContentState createState() => PageContentState();
}

class PageContentState extends State<PageContent> with SingleTickerProviderStateMixin {
  List tabTitle = ["关注", "推荐", "热榜", "要闻"];
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = new TabController(length: tabTitle.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 80,
            color: Colors.red,
          ),
          Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                controller: tabController,
                tabs: [
                  Tab(text: "关注"),
                  Tab(text: "推荐"),
                  Tab(text: "热榜"),
                  Tab(text: "要闻"),
                ],
                isScrollable: true,
                indicatorColor: Colors.red,
              ),
            ),
            body: TabBarView(
              controller: tabController,
              children: [
                HomepageSubpage(),
                HomepageSubpage(),
                HomepageSubpage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
