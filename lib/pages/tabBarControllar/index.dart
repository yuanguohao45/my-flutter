import 'package:flutter/material.dart';

class TabBarControllar extends StatefulWidget {
  TabBarControllar({Key key}) : super(key: key);

  @override
  _TabBarControllarState createState() => _TabBarControllarState();
}

class _TabBarControllarState extends State<TabBarControllar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabBar-controllar'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(
              text: '热销',
            ),
            Tab(
              text: '推荐',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          ListTile(
            title: Text('热销'),
          ),
          ListTile(
            title: Text('推荐'),
          ),
        ],
      ),
    );
  }
}
