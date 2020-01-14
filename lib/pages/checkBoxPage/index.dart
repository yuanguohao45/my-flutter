import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('多选演示页面'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (value) {
                  setState(() {
                    this.flag = value;
                  });
                },
                activeColor: Colors.red,
              )
            ],
          ),
          Row(
            children: <Widget>[Text(this.flag ? '选中' : '未选中')],
          ),
          SizedBox(
            height: 80.0,
          ),
          Divider(),
          CheckboxListTile(
            secondary: Icon(Icons.question_answer),
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
            value: this.flag,
            activeColor: Colors.blue,
            title: Text('多选列表'),
            subtitle: Text('woshi多选列表'),
          ),
          Divider()
        ],
      ),
    );
  }
}
