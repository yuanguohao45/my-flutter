import 'package:flutter/material.dart';

class RegisterSecond extends StatefulWidget {
  RegisterSecond({Key key}) : super(key: key);

  @override
  _RegisterSecondState createState() => _RegisterSecondState();
}

class _RegisterSecondState extends State<RegisterSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二步-输入验证码'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text('请输入验证码，然后点击下一步'),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            child: Text('下一步'),
            onPressed: () {
              Navigator.pushNamed(context, '/registerThird');
            },
          )
        ],
      )),
    );
  }
}
