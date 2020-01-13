import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('按钮演示页面')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: () {},
              ),
              SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                child: Text('普通按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
              ),
              SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                child: Text('阴影按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,
                onPressed: () {},
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 200.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text('阴影按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {},
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 60.0,
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Text('阴影按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {},
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
