import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180.0,
        child: ListView(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 180.0,
              // height: 180.0,
              color: Colors.red,
            ),
            Container(
              width: 180.0,
              // height: 180.0,
              color: Colors.blue,
              child: ListView(children: <Widget>[
                Image.network(
                    "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2863118477,1978106776&fm=26&gp=0.jpg"),
                Text("我是一个文本")
              ]),
            ),
            Container(
              width: 180.0,
              // height: 180.0,
              color: Colors.pink,
            ),
            Container(
              width: 180.0,
              // height: 180.0,
              color: Colors.purple,
            ),
          ],
        ));
  }
}
