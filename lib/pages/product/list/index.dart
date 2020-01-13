import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  Map arguments;
  ProductList({Key key, this.arguments}) : super(key: key);

  @override
  _ProductListState createState() =>
      _ProductListState(arguments: this.arguments);
}

class _ProductListState extends State<ProductList> {
  Map arguments;

  String title;
  _ProductListState({this.arguments, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${arguments != null ? arguments['title'] : title}'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('跳转到商品详情页面'),
            onPressed: () {
              Navigator.pushNamed(context, '/productInfo',
                  arguments: {'pid': 12});
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    );
  }
}
