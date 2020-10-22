import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:toutiao/widget/MyEasyRefresh.dart';

import '../bean/NewsItemBean.dart';

class HomepageSubpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<NewsItemBean> list = new List();
  EasyRefreshController easyRefreshController;

  HomeContent() {
    easyRefreshController = EasyRefreshController();

    NewsItemBean itemBean1 = new NewsItemBean(
        "马云圆梦A股！蚂蚁集团IPO获批",
        ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              "images/news2.jpeg",
              alignment: Alignment.topCenter,
            )),
        "中国银行保险报",
        "78");

    NewsItemBean itemBean2 = new NewsItemBean(
        "奥巴马炮轰特朗普：从我这儿继承的美国\"繁荣经济\"，他全搞砸了",
        ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              "images/news1.jpeg",
              alignment: Alignment.topCenter,
            )),
        "环球网",
        "753");

    NewsItemBean itemBean3 = new NewsItemBean(
        "100个抑郁症女生的写真",
        ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              "images/news3.jpeg",
              alignment: Alignment.topCenter,
            )),
        "央视网新闻",
        "15");

    NewsItemBean itemBean4 = new NewsItemBean(
        "日本将向海洋排放福岛核污水？",
        ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              "images/news4.jpeg",
              alignment: Alignment.topCenter,
            )),
        "一条",
        "625");

    list.add(itemBean1);
    list.add(itemBean2);
    list.add(itemBean3);
    list.add(itemBean4);

    list.add(itemBean1);
    list.add(itemBean2);
    list.add(itemBean3);
    list.add(itemBean4);

    list.add(itemBean1);
    list.add(itemBean2);
    list.add(itemBean3);
    list.add(itemBean4);
  }

  @override
  Widget build(BuildContext context) {
    return MyEasyRefresh(
        ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(15),
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 60,
                      child: Text(list[index].title,
                          style: TextStyle(fontSize: 16)),
                    ),
                    Positioned(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(208, 0, 0, 0),
                        width: 150,
                        height: 70,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: list[index].image),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                        child: Text(
                            list[index].authorName +
                                "  评论" +
                                list[index].commentCount,
                            style: TextStyle(
                                fontSize: 12, color: Colors.black38))),
                  ],
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.3, color: Colors.black12))),
              );
            })
    );
  }
}
