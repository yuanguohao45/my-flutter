import 'package:flutter/material.dart';

class StudentSystem extends StatefulWidget {
  StudentSystem({Key key}) : super(key: key);

  @override
  _StudentSystemState createState() => _StudentSystemState();
}

class _StudentSystemState extends State<StudentSystem> {
  String username;
  int sex = 1;
  String info = '';
  void _sexChange(v) {
    setState(() {
      this.sex = v;
    });
  }

  List hobby = [
    {"checked": true, "title": '吃饭'},
    {"checked": true, "title": '睡觉'},
    {"checked": true, "title": '写代码'},
  ];
  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(this.hobby[i]["title"] + ":"),
          Checkbox(
            onChanged: (v) {
              setState(() {
                this.hobby[i]["checked"] = v;
              });
            },
            value: this.hobby[i]["checked"],
          )
        ],
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学员登记系统'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "输入用户信息"),
              onChanged: (v) {
                setState(() {
                  username = v;
                });
              },
            ),
            Row(
              children: <Widget>[
                Text('男：'),
                Radio(
                  onChanged: this._sexChange,
                  value: 1,
                  groupValue: this.sex,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text('女：'),
                Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: this._sexChange,
                )
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Column(
              children: this._getHobby(),
            ),
            TextField(
              maxLines: 4,
              onChanged: (v) {
                setState(() {
                  this.info = v;
                });
              },
              decoration: InputDecoration(
                  hintText: "输入用户信息", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: double.infinity,
              height: 40.0,
              child: RaisedButton(
                child: Text('提交信息'),
                onPressed: () {
                  print(this.username);
                  print(this.sex);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
