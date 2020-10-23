import 'package:flutter/material.dart';
import 'package:toutiao/home/homesearchview.dart';
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
  List tabs = ["推荐", "热门", "影视", "直播", "游戏", "音乐", "综艺", "美食"];
  List<XiguapageSubpage> pages = new List();
  List<Tab> tabViews = new List();
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: tabs.length, vsync: this);
    tabController.addListener(() {
      var index = tabController.index;
    });

    for(int i=0;i<tabs.length;i++) {
      pages.add(XiguapageSubpage());
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
