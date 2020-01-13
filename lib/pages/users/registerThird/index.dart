import 'package:flutter/material.dart';
import '../../../pages/tabs/index.dart';

class RegisterThird extends StatefulWidget {
  RegisterThird({Key key}) : super(key: key);

  @override
  _RegisterThirdState createState() => _RegisterThirdState();
}

class _RegisterThirdState extends State<RegisterThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三部-完成注册'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text('注册成功'),
          RaisedButton(
            child: Text('返回'),
            onPressed: () {
              // 替换路由，旧的路由会被替换
              // Navigator.of(context).pop()

              // 返回根
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(
                      builder: (context) => new Tabs(index: 2)),
                  (route) => route == null);
            },
          )
        ],
      )),
    );
  }
}
