import 'package:flutter/material.dart';

class RegisterFirst extends StatefulWidget {
  RegisterFirst({Key key}) : super(key: key);

  @override
  _RegisterFirstState createState() => _RegisterFirstState();
}

class _RegisterFirstState extends State<RegisterFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一步-输入手机号'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text('这是注册第一步，请输入您的手机号，然后点击下一步'),
          RaisedButton(
            child: Text('下一步'),
            onPressed: () {
              Navigator.pushNamed(context, '/registerSecond');
              // 替换路由，旧的路由会被替换
              // Navigator.of(context).pushReplacementNamed('/registerSecond');
            },
          )
        ],
      )),
    );
  }
}
