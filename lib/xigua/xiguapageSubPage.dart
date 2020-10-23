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
        "或许，这才是姜子牙真正想要表达的意思！",
        "images/video_cover1.jpg",
        "电影狂人A",
        "images/video_head1.jpg",
        "245");

    VideoItemBean videoItemBean3 = new VideoItemBean(
        "六大被北影录用教材的镜头，徐峥在医院哭戏，游本昌一个眼神封神",
        "images/video_cover2.jpg",
        "盘点老梁",
        "images/video_head2.jpg",
        "9432");

    VideoItemBean videoItemBean4 = new VideoItemBean(
        "敌我差距之鲁班：敌方鲁班五杀随便拿，我方鲁班不像话？",
        "images/video_cover3.jpg",
        "电竞小芯",
        "images/video_head3.jpg",
        "834");

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
                          height: 200,
                          child: Image.asset(list[index].cover),
                        ),
                        Container(
                          width: 270,
                          padding: const EdgeInsets.all(10),
                          child: Text(list[index].title,
                              style: TextStyle(fontSize: 16, color: Colors.white)),
                        ),
                        Container(
                          height: 200,
                          alignment: Alignment.center,
                          child: Image.asset("images/ic_play.png",
                              width: 50, height: 50),
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
                child: Image.asset(videoItemBean.avator),
            )),
        Text(videoItemBean.authorName),
        Text("  关注", style: TextStyle(color: Colors.red, fontSize: 13)),
        Expanded(  //权重充满空白区域
          flex: 1,
          child: Text(""),
        ),
        Image.asset("images/ic_comment.png", width: 15, height: 15),
        Text(" " + videoItemBean.commentCount, style: TextStyle(fontSize: 13)),
        Container(
          margin: const EdgeInsets.only(left: 25, right: 20),
          width: 18,
          height: 18,
          child: Image.asset("images/ic_more.png",
              width: 30, height: 30, alignment: Alignment.topCenter),
        )
      ],
    );
  }
}
