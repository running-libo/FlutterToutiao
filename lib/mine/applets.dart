

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toutiao/mine/minemenu.dart';

class Applets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Text("小程序", style: TextStyle(fontSize: 18)),
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Text("全部 >", style: TextStyle(fontSize: 13, color: Colors.black38)),
              )
            ],
          ),
          AppletMenuRow(),
          AppletMenuRow(),
        ],
      ),
    );
  }

}