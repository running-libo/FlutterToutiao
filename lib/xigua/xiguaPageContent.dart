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
                children: [
                  XiguapageSubpage(),
                  XiguapageSubpage(),
                  XiguapageSubpage(),
                  XiguapageSubpage(),
                  XiguapageSubpage(),
                  XiguapageSubpage(),
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
                  Tab(text: "推荐"),
                  Tab(text: "热门"),
                  Tab(text: "影视"),
                  Tab(text: "直播"),
                  Tab(text: "游戏"),
                  Tab(text: "音乐"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
