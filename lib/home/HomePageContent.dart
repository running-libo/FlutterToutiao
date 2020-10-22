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
  List tabs = ["关注", "推荐", "热榜", "要闻", "新时代", "抗疫"];
  TabController tabController;
  var topBarHeight = 65;

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
              margin: const EdgeInsets.only(top: 110),
              child: TabBarView(
                controller: tabController,
                children: [
                  HomepageSubpage(),
                  HomepageSubpage(),
                  HomepageSubpage(),
                  HomepageSubpage(),
                  HomepageSubpage(),
                  HomepageSubpage(),
                ],
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
                tabs: [
                  Tab(text: "关注"),
                  Tab(text: "推荐"),
                  Tab(text: "热榜"),
                  Tab(text: "要闻"),
                  Tab(text: "新时代"),
                  Tab(text: "抗疫"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
