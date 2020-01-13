import 'package:flutter/material.dart';
// import '../../searchPage/index.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: () {
            // 路由跳转
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => SearchPage()));
            Navigator.pushNamed(context, '/searchPage', arguments: {'id': 123});
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('跳转到表单页面并传值'),
          onPressed: () {},
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('跳转到商品页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/productList',
                arguments: {'title': '促销商品'});
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('跳转到appBarDemo页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/appBarDemo');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到tabBarControllar页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/tabBarControllar');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到按钮演示页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/buttonPage');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
