import 'package:flutter/material.dart';

class StudentSystem extends StatefulWidget {
  StudentSystem({Key key}) : super(key: key);

  @override
  _StudentSystemState createState() => _StudentSystemState();
}

class _StudentSystemState extends State<StudentSystem> {
  String username;
  int sex = 1;

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
                  onChanged: (v) {
                    setState(() {
                      sex = v;
                    });
                  },
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
                    onChanged: (v) {
                      setState(() {
                        sex = v;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
