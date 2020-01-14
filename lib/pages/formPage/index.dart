import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var _userName = new TextEditingController();
  var _passWord;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userName.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          // child: TextDemo()
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: "请输入用户名"),
                controller: _userName,
                onChanged: (value) {
                  setState(() {
                    _userName.text = value;
                  });
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: "请输入密码"),
                onChanged: (value) {
                  setState(() {
                    _passWord = value;
                  });
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 40.0,
                child: RaisedButton(
                  child: Text('登录'),
                  onPressed: () {
                    print(this._userName.text);
                    print(_passWord);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              )
            ],
          )),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
                hintText: "请输入搜索内容", border: OutlineInputBorder()),
          ),
          SizedBox(height: 20.0),
          TextField(
            maxLines: 4,
            maxLength: 240,
            decoration: InputDecoration(
                hintText: "请输入搜索内容", border: OutlineInputBorder()),
          ),
          SizedBox(height: 20.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "请输入密码", border: OutlineInputBorder()),
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
                hintText: "请输入用户名",
                border: OutlineInputBorder(),
                labelText: "用户名",
                labelStyle: TextStyle(fontSize: 20.0)),
          ),
          SizedBox(height: 20.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "请输入密码",
                border: OutlineInputBorder(),
                labelText: "密码",
                labelStyle: TextStyle(fontSize: 20.0)),
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
                hintText: "请输入图标描述",
                icon: Icon(Icons.people),
                labelStyle: TextStyle(fontSize: 20.0)),
          ),
        ],
      ),
    );
  }
}

// class FormPage extends StatelessWidget {
//   // const FormPage({Key key}) : super(key: key);
//   final arguments;
//   String title;
//   FormPage({this.title = '表单', this.arguments});

//   @override
//   Widget build(BuildContext context) {
//     print(this.arguments);
//     print(this.title);
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         child: Text('返回'),
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//       ),
//       appBar: AppBar(
//         title: Text('${arguments != null ? arguments['title'] : title}'),
//       ),
//       body: ListView(
//         children: <Widget>[
//           ListTile(
//             title: Text('我是表单'),
//           ),
//           ListTile(
//             title: Text('我是表单'),
//           ),
//           ListTile(
//             title: Text('我是表单'),
//           ),
//           ListTile(
//             title: Text('我是表单'),
//           ),
//           ListTile(
//             title: Text('我是表单'),
//           ),
//         ],
//       ),
//     );
//   }
// }
