import 'package:flutter/material.dart';
import 'package:toutiao/home/homepageSubPage.dart';
import 'package:toutiao/home/homesearchview.dart';

// 页面内容
class HomePageContent extends StatefulWidget {
  HomePageContent({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageContentState createState() => HomePageContentState();
}

class HomePageContentState extends State<HomePageContent>
    with SingleTickerProviderStateMixin {
  List tabs = ["关注", "推荐", "热榜", "要闻", "新时代", "抗疫", "免费小说", "热点"];
  List<HomepageSubpage> pages = new List();
  List<Tab> tabViews = new List();
  TabController tabController;
  var topBarHeight = 65;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: tabs.length, vsync: this);
    tabController.addListener(() {
      var index = tabController.index;
    });

    for(int i=0;i<tabs.length;i++) {
      pages.add(HomepageSubpage());
      tabViews.add(Tab(text: tabs[i]));
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              height: 85,
              padding: const EdgeInsets.only(left: 16, bottom: 2, right: 16),
              child: HomeSearchView(),
            ),
            Container(
              margin: const EdgeInsets.only(top: 130),
              child: TabBarView(
                controller: tabController,
                children: pages,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 85),
              child: TabBar(
                controller: tabController,
                isScrollable: true,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black87,
                indicatorColor: Colors.red,
                tabs: tabViews,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
