import 'package:flutter/material.dart';

class Share extends StatelessWidget {
  const Share({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('分享页面'),
        ),
      ),
    );
  }
}
