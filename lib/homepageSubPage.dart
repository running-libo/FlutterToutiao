
import 'package:flutter/material.dart';

class HomepageSubpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<String> list = new List();

  HomeContent() {
    for(var i=0;i<20;i++) {
      list.add("第$i条数据");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index]),
        );
      },
    );
  }

}
