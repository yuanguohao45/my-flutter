import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpRequestPage extends StatefulWidget {
  HttpRequestPage({Key key}) : super(key: key);

  @override
  _HttpRequestPageState createState() => _HttpRequestPageState();
}

class _HttpRequestPageState extends State<HttpRequestPage> {
  List _list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Map userInfo = {"username": '张三', "age": 20};

    // print(json.encode(userInfo));

    // String userinfo = '{"username": "张三", "age": 20}';

    // Map u = json.decode(userinfo);

    // print(u["username"]);
    this._getData();
  }

  _getData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    var result = await http.get(apiUrl);
    if (result.statusCode == 200) {
      setState(() {
        this._list = json.decode(result.body)['result'];
      });
    } else {}
  }

  _postData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    var result =
        await http.post(apiUrl, body: {'username': "zhangdan ", "age": 20});
    if (result.statusCode == 200) {
      setState(() {
        this._list = json.decode(result.body)['result'];
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('http请求部件'),
        ),
        body: this._list.length > 0
            // ? ListView(
            //     children: this
            //         ._list
            //         .map((value) => ListTile(title: Text(value["title"])))
            //         .toList())

            ? ListView.builder(
                itemCount: this._list.length,
                itemBuilder: (context, index) =>
                    ListTile(title: Text("${this._list[index]["title"]}")))
            : Text('加载中...')
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Center(
        //       child: Column(
        //         children: <Widget>[
        //           RaisedButton(
        //             child: Text('get--请求'),
        //             onPressed: _getData,
        //           ),
        //           RaisedButton(
        //             child: Text('post请求'),
        //             onPressed: () {},
        //           ),
        //           RaisedButton(
        //             child: Text('get请求数据、渲染数据演示demo'),
        //             onPressed: () {},
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        );
  }
}
