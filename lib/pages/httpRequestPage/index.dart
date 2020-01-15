import 'package:flutter/material.dart';

class HttpRequestPage extends StatefulWidget {
  HttpRequestPage({Key key}) : super(key: key);

  @override
  _HttpRequestPageState createState() => _HttpRequestPageState();
}

class _HttpRequestPageState extends State<HttpRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('http请求部件'),
      ),
      body: Text('http请求'),
    );
  }
}
