import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:toutiao/bean/VideoItemBean.dart';
import 'package:toutiao/widget/MyEasyRefresh.dart';

class XiguapageSubpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<VideoItemBean> list = new List();

  HomeContent() {
    VideoItemBean videoItemBean1 = new VideoItemBean(
        "马云圆梦A股！蚂蚁集团IPO获批",
        ClipRRect(
            child: Image.asset(
          "images/news3.jpeg",
          fit: BoxFit.cover,
        )),
        "中国银行保险报");

    VideoItemBean videoItemBean3 = new VideoItemBean(
        "100个抑郁症女生的写真",
        ClipRRect(
            child: Image.asset(
          "images/news3.jpeg",
          fit: BoxFit.cover,
        )),
        "央视网新闻");

    VideoItemBean videoItemBean4 = new VideoItemBean(
        "日本将向海洋排放福岛核污水？",
        ClipRRect(
            child: Image.asset(
          "images/news4.jpeg",
          fit: BoxFit.cover,
        )),
        "一条");

    list.add(videoItemBean1);
    list.add(videoItemBean3);
    list.add(videoItemBean4);

    list.add(videoItemBean1);
    list.add(videoItemBean3);
    list.add(videoItemBean4);

    list.add(videoItemBean1);
    list.add(videoItemBean3);
    list.add(videoItemBean4);
  }

  @override
  Widget build(BuildContext context) {
    return MyEasyRefresh(
        ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 250,
                          child: list[index].image,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(list[index].title,
                              style: TextStyle(fontSize: 16, color: Colors.white)),
                        ),
                        Container(
                          height: 250,
                          alignment: Alignment.center,
                          child: Image.asset("images/ic_play.png",
                              width: 40, height: 40),
                        )
                      ],
                    ),
                    UserCard(list[index])
                  ],
                ),
              );
            })
    );
  }
}

//用户card=
class UserCard extends StatelessWidget {
  VideoItemBean videoItemBean;

  UserCard(this.videoItemBean);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.fromLTRB(12, 10, 12, 10),
            width: 30,
            height: 30,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CachedNetworkImage(
                  imageUrl: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603200753048&di=1435eb026099801a3c94e09d4545e0d1&imgtype=0&src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202003%2F03%2F20200303085706_ncPzz.thumb.400_0.jpeg",
                  placeholder: (context, url) =>  CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
            )),
        Text(videoItemBean.authorName),
        Expanded(  //权重充满空白区域
          flex: 1,
          child: Text(""),
        ),
        Text("查看详情",style: TextStyle(color: Colors.red)),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: 18,
          height: 18,
          child: Image.asset("images/ic_more.png",
              width: 30, height: 30, alignment: Alignment.topCenter),
        )
      ],
    );
  }
}
