import 'package:flutter/material.dart';
import 'bean/ListItem.dart';

class XiguapageSubpage extends StatelessWidget {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    list[index].image,
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text("不愧是记忆大师，把记忆方法都编成了\"口诀\"，快记下来！", style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                        child: Image.asset("images/ic_play.png", width: 40, height: 40, alignment: Alignment.topCenter),
                      ),
                    ),

                  ],
                ),
                UserCard()
              ],
            ),
          );
        });
  }
}

//用户card=
class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.fromLTRB(12, 10, 12, 10),
            width: 30,
            height: 30,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603200753048&di=1435eb026099801a3c94e09d4545e0d1&imgtype=0&src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202003%2F03%2F20200303085706_ncPzz.thumb.400_0.jpeg",
                  alignment: Alignment.topCenter,
                ))
        ),
        Text("卢菲菲记忆"),
        Container(
          margin: const EdgeInsets.fromLTRB(125, 0, 10, 0),
          child: Text("查看详情", style: TextStyle(color: Colors.deepOrangeAccent)),
        ),
        Image.asset("images/ic_more.png", width: 30, height: 30, alignment: Alignment.topCenter),
        ],
    );
  }

}
