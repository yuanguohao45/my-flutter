import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面'),
      ),
      body: Text('这是一个搜索页面,${arguments != null ? arguments['id'] : '0'}'),
    );
  }
}
