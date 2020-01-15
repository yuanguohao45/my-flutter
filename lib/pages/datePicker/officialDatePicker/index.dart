import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class OfficialDatePicker extends StatefulWidget {
  OfficialDatePicker({Key key}) : super(key: key);

  @override
  _OfficialDatePickerState createState() => _OfficialDatePickerState();
}

class _OfficialDatePickerState extends State<OfficialDatePicker> {
  var _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 20);
  _showDatePicker() async {
    // showDatePicker(
    //   context: context,
    //   initialDate: _nowDate,
    //   firstDate: DateTime(1970),
    //   lastDate: DateTime(2100),
    // ).then((res) {
    //   print(res);
    // });

    var result = await showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1970),
      lastDate: DateTime(2100),
    );
    setState(() {
      this._nowDate = result;
    });
  }

  _showTimePicker() async {
    // showTimePicker(
    //   context: context,
    //   initialTime: _nowTime,
    // ).then((res) {
    //   print(res);
    // });
    var res = await showTimePicker(
      context: context,
      initialTime: _nowTime,
    );
    setState(() {
      this._nowTime = res;
    });
  }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   print(now);
  //   print(now.millisecondsSinceEpoch);

  //   print(DateTime.fromMillisecondsSinceEpoch(now.millisecondsSinceEpoch));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('官方日期部件'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            InkWell(
              child: Row(
                children: <Widget>[
                  Text(
                      '${formatDate(_nowDate, [yyyy, '年', mm, '月', dd, '日'])}'),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showDatePicker,
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Text('${_nowTime.format(context)}'),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showTimePicker,
            ),
          ])
        ],
      ),
    );
  }
}
