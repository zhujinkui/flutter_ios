import 'package:demo/app/commonents/app_floating_action_button.dart';
import 'package:demo/app/commonents/app_page_bottom.dart';
import 'package:demo/app/commonents/app_page_header.dart';
import 'package:demo/app/commonents/app_page_main.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // 底部
  int currentAppBottomNavigationBarItem = 0;

  // 是否现实应用suff
  bool showAppBar = true;

  // 点按底部导航栏事件处理
  void onTapAppBottomNavigationBarItem(int index) {
    setState(() {
      currentAppBottomNavigationBarItem = index;
      showAppBar = index == 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: showAppBar ? AppPageHeader() : null,
          body: AppPageMain(
            currentIndex: currentAppBottomNavigationBarItem,
          ),
          bottomNavigationBar: AppPageBottom(
            currentIndex: currentAppBottomNavigationBarItem,
            onTap: onTapAppBottomNavigationBarItem,
          ),
          floatingActionButton: AppFloatintActionButton(),
        ),
      ),
    );
  }
}
