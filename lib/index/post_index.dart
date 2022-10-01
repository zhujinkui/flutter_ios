import 'package:demo/index/commonents/post_index_latest.dart';
import 'package:demo/index/commonents/post_index_popular.dart';
import 'package:flutter/material.dart';

class PostIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        PostIndexLatest(),
        PostIndexPopular()
      ],
    );
  }
}
