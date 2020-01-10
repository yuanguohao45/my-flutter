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
  List<Widget> _getData() {
    // List<Widget> list = new List();
    // for (var i = 0; i < 20; i++) {
    //   list.add(ListTile(
    //     title: Text('我是$i列表'),
    //   ));
    // }
    // return list;

    var tempList = listData.map((value) => Container(
          child: Column(
            children: <Widget>[
              Image.network(
                value["imageUrl"],
                // width: 170,
                height: 170,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                value["title"],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(value["autor"]),
            ],
          ),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromRGBO(233, 233, 233, 1), width: 1)),
        ));

    return tempList.toList();
  }
  // Widget _getData(context, index) {
  //   return ListTile(
  //       leading: Image.network(
  //         listData[index]["imageUrl"],
  //         width: 60,
  //         fit: BoxFit.cover,
  //       ),
  //       title: Text(listData[index]["title"]),
  //       subtitle: Text(listData[index]["autor"]));
  // }

  // @override
  // Widget build(BuildContext context) {
  //   // return Container(
  //   //     child: ListView(
  //   //   padding: EdgeInsets.all(10),
  //   //   children: this._getData(),
  //   // ));

  //   return ListView.builder(
  //       itemCount: listData.length,
  //       itemBuilder: (context, index) => this._getData(context, index));
  // }
  Widget _getGridData(context, index) => Container(
        child: Column(
          children: <Widget>[
            Image.network(
              listData[index]["imageUrl"],
              // width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              listData[index]["title"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(listData[index]["autor"]),
          ],
        ),
        decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromRGBO(233, 233, 233, 1), width: 1)),
      );

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //     crossAxisCount: 2,
    //     mainAxisSpacing: 10.0,
    //     crossAxisSpacing: 10.0,
    //     padding: EdgeInsets.all(10),
    //     childAspectRatio: 0.8,
    //     children: this._getData());

    return Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              // padding: EdgeInsets.all(10),
              childAspectRatio: 0.8,
            ),
            itemCount: listData.length,
            itemBuilder: this._getGridData));
  }
}
