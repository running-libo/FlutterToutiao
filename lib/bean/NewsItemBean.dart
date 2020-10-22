
import 'package:flutter/material.dart';

class NewsItemBean {
  final String title;
  final ClipRRect image;
  final String authorName;
  final String commentCount;

  NewsItemBean(this.title, this.image, this.authorName, this.commentCount);
}