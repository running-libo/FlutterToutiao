import 'package:flutter/material.dart';

import 'bean/ListItem.dart';

class HomepageSubpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<ListItem> list = new List();

  HomeContent() {
    for (int i = 0; i < 20; i++) {
      list.add(new ListItem(
          "日本将向海洋排放福岛核污水？",
          ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602884612610&di=99e5e92e7d3fd95d9c922f29c35f4b61&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2Fb%2F57a2a20321de9.jpg",
                alignment: Alignment.topCenter,
              )),
          "央视网新闻",
          "15"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                Container(
                  width: 200,
                  height: 60,
                  child: Text(list[index].title, style: TextStyle(fontSize: 16)),
                ),
                Positioned(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(208, 0, 0, 0),
                    width: 150,
                    height: 70,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: list[index].image
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                    child: Text(list[index].authorName + "  评论" + list[index].commentCount, style: TextStyle(fontSize: 12, color: Colors.black38))
                ),
              ],
            ),
          );
        });
  }

}
