import 'package:demo/index/post_index.dart';
import 'package:demo/post/post_create.dart';
import 'package:demo/user/user_profile.dart';
import 'package:flutter/material.dart';

class AppPageMain extends StatelessWidget {
  final int currentIndex;

  AppPageMain({this.currentIndex = 0});

  // 一组页面主体小部件
  final pageMain = [
    PostIndex(),
    PostCreate(),
    UserProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return pageMain.elementAt(currentIndex);
  }
}
