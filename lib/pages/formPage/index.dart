import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  // const FormPage({Key key}) : super(key: key);
  final arguments;
  String title;
  FormPage({this.title = '表单', this.arguments});

  @override
  Widget build(BuildContext context) {
    print(this.arguments);
    print(this.title);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text('${arguments != null ? arguments['title'] : title}'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是表单'),
          ),
          ListTile(
            title: Text('我是表单'),
          ),
          ListTile(
            title: Text('我是表单'),
          ),
          ListTile(
            title: Text('我是表单'),
          ),
          ListTile(
            title: Text('我是表单'),
          ),
        ],
      ),
    );
  }
}
