import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  SwitchPage({Key key}) : super(key: key);

  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  var sex = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('开关演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Switch(
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              value: this.sex,
            )
          ],
        ),
      ),
    );
  }
}
