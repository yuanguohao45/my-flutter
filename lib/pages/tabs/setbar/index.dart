import 'package:flutter/material.dart';

class SetBar extends StatefulWidget {
  SetBar({Key key}) : super(key: key);

  @override
  _SetBarState createState() => _SetBarState();
}

class _SetBarState extends State<SetBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('跳转到登录页面并传值'),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('跳转到注册页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/registerFirst');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
