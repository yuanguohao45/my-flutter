import 'package:flutter/material.dart';

import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('my-flutter')), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);
  // 自定义方法
  // List<Widget> _getData() {
  // List<Widget> list = new List();
  // for (var i = 0; i < 20; i++) {
  //   list.add(ListTile(
  //     title: Text('我是$i列表'),
  //   ));
  // }
  // return list;

  // var tempList = listData.map((value) => ListTile(
  //       leading: Image.network(
  //         value["imageUrl"],
  //         width: 80,
  //         fit: BoxFit.cover,
  //       ),
  //       title: Text(value["title"]),
  //       subtitle: Text(value["autor"]),
  //     ));

  // return tempList.toList();
  // }
  Widget _getData(context, index) {
    return ListTile(
        leading: Image.network(
          listData[index]["imageUrl"],
          width: 60,
          fit: BoxFit.cover,
        ),
        title: Text(listData[index]["title"]),
        subtitle: Text(listData[index]["autor"]));
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //     child: ListView(
    //   padding: EdgeInsets.all(10),
    //   children: this._getData(),
    // ));

    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) => this._getData(context, index));
  }
}
