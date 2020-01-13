import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('app-bar'),
          centerTitle: true,
          // backgroundColor: Colors.red,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print('menu');
          //   },
          // ),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     onPressed: () {
          //       print('search');
          //     },
          //   ),
          //   IconButton(
          //     icon: Icon(Icons.settings),
          //     onPressed: () {
          //       print('settings');
          //     },
          //   ),
          // ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: '热门',
              ),
              Tab(
                text: '推荐',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('tab1'),
                ),
                ListTile(
                  title: Text('tab1'),
                ),
                ListTile(
                  title: Text('tab1'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('tab2'),
                ),
                ListTile(
                  title: Text('tab2'),
                ),
                ListTile(
                  title: Text('tab2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
