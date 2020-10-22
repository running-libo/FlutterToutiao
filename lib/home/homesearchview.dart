
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              FlatButton(
                minWidth: 290,
                height: 40,
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),  //设置圆角
                onPressed: () {

                },
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 8),
                    child: Image.asset("images/ic_search.png", width: 18, height: 18),
                  ),
                  Text("宋茜泳装照 | 英雄联盟S10赛季"),
                ],
              )
            ],
          )
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            children: [
              Container(
                width: 25,
                height: 25,
                margin: const EdgeInsets.only(top: 40, bottom: 3),
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Text("+", style: TextStyle(fontSize: 20, color: Colors.red)),
                ),
              ),
              Text("发布", style: TextStyle(color: Colors.white, fontSize: 10))
            ],
          ),
        ),

      ],
    );
  }

}