import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() async {}
  _simpleDialog() async {}
  _modelBottomDialog() async {}
  _toast() {}

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
