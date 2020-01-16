import 'package:flutter/material.dart';
import 'dart:async';

class ClassDialog extends Dialog {
  String title;
  String content;

  ClassDialog({this.title = null, this.content = ''});

  _showTimer(context) {
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      print('运行');
      Navigator.pop(context);
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);

    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300.0,
          width: 300.0,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Stack(
                  children: <Widget>[
                    Align(
                      child: Text('${title}'),
                      alignment: Alignment.center,
                    ),
                    Align(
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Icon(Icons.local_dining),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
