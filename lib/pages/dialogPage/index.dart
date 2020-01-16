import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() async {
    var res = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('提示信息！'),
              content: Text('您确定要删除吗'),
              actions: <Widget>[
                FlatButton(
                  child: Text('取消'),
                  onPressed: () {
                    Navigator.pop(context, 'Cancle');
                  },
                ),
                FlatButton(
                  child: Text('确定'),
                  onPressed: () {
                    Navigator.pop(context, 'Ok');
                  },
                ),
              ],
            ));
    print(res);
  }

  _simpleDialog() async {
    var res = await showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: Text('选择内容'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "A");
                  },
                  child: Text('OptionA'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "B");
                  },
                  child: Text('OptionB'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "C");
                  },
                  child: Text('OptionC'),
                ),
              ],
            ));
    print(res);
  }

  _modelBottomDialog() async {
    var res = await showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              height: 200.0,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('分享A'),
                    onTap: () {
                      Navigator.pop(context, "A");
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('分享B'),
                    onTap: () {
                      Navigator.pop(context, "B");
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('分享C'),
                    onTap: () {
                      Navigator.pop(context, "C");
                    },
                  ),
                ],
              ),
            ));
    print(res);
  }

  _toast() {
    Fluttertoast.showToast(
        msg: "Toast提示信息",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.blueAccent,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('弹框部件'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  child: Text('alert-Dialog'),
                  onPressed: _alertDialog,
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  child: Text('simple-Dialog'),
                  onPressed: _simpleDialog,
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  child: Text('model-bottom-Dialog'),
                  onPressed: _modelBottomDialog,
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  child: Text('toast'),
                  onPressed: _toast,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
