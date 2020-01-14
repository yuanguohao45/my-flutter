import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  var sex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('单选演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            // Row(
            //   children: <Widget>[
            //     Text('男：'),
            //     Radio(
            //       groupValue: this.sex,
            //       value: 1,
            //       onChanged: (v) {
            //         setState(() {
            //           this.sex = v;
            //         });
            //       },
            //     ),
            //     Text('女：'),
            //     Radio(
            //       groupValue: this.sex,
            //       value: 2,
            //       onChanged: (v) {
            //         setState(() {
            //           this.sex = v;
            //         });
            //       },
            //     ),
            //   ],
            // ),
            // Row(
            //   children: <Widget>[
            //     Text("${this.sex}"),
            //     Text(this.sex == 1 ? "男" : "女"),
            //   ],
            // ),
            // Divider(),
            // Row(
            //   children: <Widget>[
            RadioListTile(
              groupValue: this.sex,
              value: 1,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              title: Text('女'),
              subtitle: Text('2女'),
              secondary: Icon(Icons.help),
              selected: this.sex == 1,
            ),
            RadioListTile(
              groupValue: this.sex,
              value: 2,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              title: Text('男'),
              subtitle: Text('1男'),
              secondary: Icon(Icons.people),
              selected: this.sex == 2,
            ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
