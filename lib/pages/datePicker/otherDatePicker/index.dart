import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';

class OtherDatePicker extends StatefulWidget {
  OtherDatePicker({Key key}) : super(key: key);

  @override
  _OtherDatePickerState createState() => _OtherDatePickerState();
}

class _OtherDatePickerState extends State<OtherDatePicker> {
  DateTime _dateTime = DateTime.now();
  _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime.parse('1970-01-01'),
      maxDateTime: DateTime.parse('2100-10-10'),
      initialDateTime: _dateTime,
      // dateFormat: 'yyyy-MMMM-dd',
      dateFormat: 'yyyy年MM月dd日    EEE,H时:m分',
      locale: DateTimePickerLocale.zh_cn,
      // pickerTheme: DateTimePickerTheme(
      //   showTitle: _showTitle,
      // ),
      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      onCancel: () {
        debugPrint('onCancel');
      },
      // onChange: (dateTime, List<int> index) {
      //   setState(() {
      //     _dateTime = dateTime;
      //   });
      // },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('第三方日期部件'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              // InkWell(
              //     child: Row(
              //       children: <Widget>[
              //         Text('${formatDate(_dateTime, [
              //           yyyy,
              //           '年',
              //           mm,
              //           '月',
              //           dd,
              //           '日'
              //         ])}'),
              //         Icon(Icons.arrow_drop_down)
              //       ],
              //     ),
              //     onTap: _showDatePicker),
              InkWell(
                  child: Row(
                    children: <Widget>[
                      Text('${formatDate(_dateTime, [
                        yyyy,
                        '年',
                        mm,
                        '月',
                        dd,
                        '日',
                        ' ',
                        HH,
                        ':',
                        nn
                      ])}'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: _showDatePicker),
            ])
          ],
        ));
  }
}
