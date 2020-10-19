
import 'package:flutter/material.dart';

class ListItem {
  final String title;
  final ClipRRect image;
  final String authorName;
  final String commentCount;

  ListItem(this.title, this.image, this.authorName, this.commentCount);
}