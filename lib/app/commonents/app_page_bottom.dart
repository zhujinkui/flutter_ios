import 'package:flutter/material.dart';

class AppPageBottom extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> ? onTap;

  AppPageBottom({
    this.onTap,
    this.currentIndex = 0
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined), label: '首页'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_outlined), label: '购物车'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), label: '个人中心'),
      ],
    );
  }
}
