import 'package:flutter/material.dart';

class App extends StatefulWidget
{
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // 底部
  int currentAppBottomNavigationBarItem = 0;

  // 是否现实应用suff
  bool showAppBar = true;

  // 点按底部导航栏事件处理
  void onTapAppBottomNavigationBarItem(int index)
  {
      setState(() {
        currentAppBottomNavigationBarItem = index;
        showAppBar = index == 0;
      });
  }

  // 一组页面主体小部件
  final pageMain = [
    TabBarView(
      children: [
        Icon(
          Icons.explore_outlined,
          size: 128,
          color: Colors.black12,
        ),
        Icon(
          Icons.local_fire_department_outlined,
          size: 128,
          color: Colors.black12,
        )
      ],
    ),
    Center(
      child: Icon(
        Icons.add_a_photo_outlined,
        size: 128,
        color: Colors.black12,
      ),
    ),
    Center(
      child: Icon(
        Icons.account_circle_outlined,
        size: 128,
        color: Colors.black12,
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: showAppBar ? AppBar(
            title: Image.network(
              "http://online.sccnn.com/img2/5890/llq160510-01.png",
              width: 32,
              color: Colors.white,
            ),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz)
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: '最近'),
                Tab(text: '热门'),
              ],
            ),
          ) : null,
          body: pageMain.elementAt(currentAppBottomNavigationBarItem),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentAppBottomNavigationBarItem,
            onTap: onTapAppBottomNavigationBarItem,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: '首页'),
              BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined), label: '购物车'),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: '个人中心'),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.share_arrival_time_outlined),
            onPressed: () {
              print('floating action button');
            },
            backgroundColor: Colors.black87,
            foregroundColor: Colors.white70,
          ),
        ),
      ),
    );
  }
}
