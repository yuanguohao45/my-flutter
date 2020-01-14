import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                width: 5.0,
              ),
              RaisedButton(
                child: Text('普通按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
              ),
              SizedBox(
                width: 5.0,
              ),
              RaisedButton(
                child: Text('阴影按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,
                onPressed: () {},
              ),
              SizedBox(
                width: 5.0,
              ),
              Container(
                width: 100.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text('阴影按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text('图标按钮'),
                onPressed: null, // 禁用
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
                  child: Text('自适应按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {},
                ),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 60.0,
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Text('自适应按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 10,
                  onPressed: () {},
                ),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  // height: 80.0,
                  child: Expanded(
                child: Container(
                  height: 80.0,
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    child: Text('自适应按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: CircleBorder(side: BorderSide(color: Colors.white)),
                    elevation: 10,
                    onPressed: () {},
                  ),
                ),
              ))
            ],
          ),
          FlatButton(
            child: Text('自适应按钮'),
            color: Colors.blue,
            textColor: Colors.white,
            shape: CircleBorder(side: BorderSide(color: Colors.white)),
            onPressed: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                      // width: 200.0,
                      margin: EdgeInsets.all(20),
                      height: 50.0,
                      child: OutlineButton(
                        child: Text('自适应按钮'),
                        // color: Colors.blue,
                        textColor: Colors.red,
                        // shape: CircleBorder(side: BorderSide(color: Colors.white)),
                        onPressed: () {},
                      )))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: Text('登录'),
                    color: Colors.blue,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('注册'),
                    color: Colors.blue,
                  ),
                ],
              )
            ],
          ),
          MyBtn(
            width: 100.0,
            height: 40.0,
            text: '我的按钮',
            pressed: () {},
          )
        ],
      ),
    );
  }
}

class MyBtn extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;

  const MyBtn(
      {Key key,
      this.text = '',
      this.pressed = null,
      this.width = 80,
      this.height = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
