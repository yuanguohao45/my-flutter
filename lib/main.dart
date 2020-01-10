import 'package:flutter/material.dart';

import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('app-title')), body: HomeContent()));
  }
}

class MyBtn extends StatelessWidget {
  final String text;
  const MyBtn(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        runAlignment: WrapAlignment.spaceAround,
        direction: Axis.vertical,
        children: <Widget>[
          MyBtn('第一季adasd'),
          MyBtn('第一季'),
          MyBtn('第一季asdasdasda'),
          MyBtn('第一季'),
          MyBtn('第一季sda'),
          MyBtn('第一季dasdas'),
          MyBtn('第一季'),
          MyBtn('第一dasdadas季'),
          MyBtn('第一季'),
          MyBtn('第一dsa季'),
          MyBtn('第一dasdsadadas季'),
          MyBtn('第一季'),
          MyBtn('第一季'),
          MyBtn('第一季'),
        ],
      ),
    );

    // List<Widget> _getData() {
    //   return listData
    //       .map((value) => Card(
    //           margin: EdgeInsets.all(10),
    //           child: Column(children: <Widget>[
    //             AspectRatio(
    //               aspectRatio: 20 / 9,
    //               child: Image.network(
    //                 value["imageUrl"],
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //             ListTile(
    //               leading: CircleAvatar(
    //                 backgroundImage: NetworkImage(value["imageUrl"]),
    //               ),
    //               title: Text(value["title"]),
    //               subtitle: Text(
    //                 value["autor"],
    //                 maxLines: 2,
    //                 overflow: TextOverflow.ellipsis,
    //               ),
    //             )
    //           ])))
    //       .toList();
    // }

    // @override
    // Widget build(BuildContext context) {
    //   return ListView(children: this._getData());

    // return ListView(children: <Widget>[
    // Card(
    //   margin: EdgeInsets.all(10),
    //   child: Column(
    //     children: <Widget>[
    //       ListTile(
    //           title: Text("张三", style: TextStyle(fontSize: 28)),
    //           subtitle: Text("高级工程师")),
    //       ListTile(title: Text("电话：xxx")),
    //       ListTile(title: Text("地址：xxx")),
    //     ],
    //   ),
    // ),
    //   Card(
    //     margin: EdgeInsets.all(10),
    //     child: Column(
    //       children: <Widget>[
    //         ListTile(
    //             title: Text("张三", style: TextStyle(fontSize: 28)),
    //             subtitle: Text("高级工程师")),
    //         ListTile(title: Text("电话：xxx")),
    //         ListTile(title: Text("地址：xxx")),
    //       ],
    //     ),
    //   ),
    //   Card(
    //     margin: EdgeInsets.all(10),
    //     child: Column(
    //       children: <Widget>[
    //         ListTile(
    //             title: Text("张三", style: TextStyle(fontSize: 28)),
    //             subtitle: Text("高级工程师")),
    //         ListTile(title: Text("电话：xxx")),
    //         ListTile(title: Text("地址：xxx")),
    //       ],
    //     ),
    //   ),
    //   Card(
    //     margin: EdgeInsets.all(10),
    //     child: Column(
    //       children: <Widget>[
    //         ListTile(
    //             title: Text("张三", style: TextStyle(fontSize: 28)),
    //             subtitle: Text("高级工程师")),
    //         ListTile(title: Text("电话：xxx")),
    //         ListTile(title: Text("地址：xxx")),
    //       ],
    //     ),
    //   ),
    // ]);

    // return AspectRatio(
    //     aspectRatio: 2.0 / 1.0,
    //     child: Container(
    //       color: Colors.red,
    //     ));

    // return Center(
    //   child: Container(
    //     height: 400.0,
    //     width: 300.0,
    //     color: Colors.red,
    //     child: Stack(
    //       alignment: Alignment.center,
    //       children: <Widget>[
    //         Image.network(
    //             "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3915520305,2241280807&fm=26&gp=0.jpg"),
    //         Positioned(
    //             left: 10.0,
    //             child: Icon(Icons.home, size: 40.0, color: Colors.blue)),
    //         Positioned(
    //             left: 100.0,
    //             child: Icon(Icons.search, size: 40.0, color: Colors.purple)),
    //         Positioned(
    //             right: 0.0,
    //             child:
    //                 Icon(Icons.select_all, size: 40.0, color: Colors.orange)),
    //       ],
    //       // children: <Widget>[
    //       //   Align(
    //       //       alignment: Alignment.topCenter,
    //       //       child: Icon(Icons.home, size: 40.0, color: Colors.blue)),
    //       //   Align(
    //       //       alignment: Alignment.bottomCenter,
    //       //       child: Icon(Icons.search, size: 40.0, color: Colors.purple)),
    //       //   Align(
    //       //       alignment: Alignment.centerLeft,
    //       //       child:
    //       //           Icon(Icons.select_all, size: 40.0, color: Colors.orange)),
    //       // ],
    //     ),
    //   ),
    // );

    // return Column(children: <Widget>[
    //   // Container(height: 200.0, color: Colors.black, child: Text('你好，flutter')),
    //   Row(children: <Widget>[
    //     Expanded(
    //         child: Container(
    //             height: 200.0, color: Colors.black, child: Text('你好,flutter')))
    //   ]),
    //   SizedBox(height: 10),
    //   Row(children: <Widget>[
    //     Expanded(
    //         flex: 2,
    //         child: Container(
    //             height: 200.0,
    //             child: Image.network(
    //                 "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3915520305,2241280807&fm=26&gp=0.jpg",
    //                 fit: BoxFit.cover))),
    //     SizedBox(width: 10),
    //     Expanded(
    //         flex: 1,
    //         child: Container(
    //             height: 200.0,
    //             child: ListView(children: <Widget>[
    //               Container(
    //                   height: 95.0,
    //                   child: Image.network(
    //                       "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1035415831,1465727770&fm=26&gp=0.jpg",
    //                       fit: BoxFit.cover)),
    //               SizedBox(height: 10),
    //               Container(
    //                   height: 95.0,
    //                   child: Image.network(
    //                       "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1035415831,1465727770&fm=26&gp=0.jpg",
    //                       fit: BoxFit.cover))
    //             ])))
    //   ])
    // ]);

    // return Row(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       IconContainer(Icons.search, color: Colors.blue),
    //       Expanded(
    //           child: Column(children: <Widget>[
    //             IconContainer(Icons.home, color: Colors.orange),
    //             IconContainer(Icons.home, color: Colors.orange)
    //           ]),
    //           flex: 1)
    //     ]);

    // return Container(
    //     height: 400.0,
    //     width: 400.0,
    //     color: Colors.pink,
    //     // child: Row(
    //     //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     //     crossAxisAlignment: CrossAxisAlignment.center,
    //     //     children: <Widget>[
    //     //       IconContainer(Icons.search, color: Colors.blue),
    //     //       IconContainer(Icons.home, color: Colors.orange),
    //     //       IconContainer(Icons.select_all, color: Colors.red)
    //     //     ]));
    //     child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: <Widget>[
    //           IconContainer(Icons.search, color: Colors.blue),
    //           IconContainer(Icons.home, color: Colors.orange),
    //           IconContainer(Icons.select_all, color: Colors.red)
    //         ]));
  }
}

class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.size, this.color});
  // const IconContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
          child: Icon(
        this.icon,
        size: this.size,
        color: Colors.white,
      )),
    );
  }
}

// class HomeContent extends StatelessWidget {
//   const HomeContent({Key key}) : super(key: key);

//   Widget _getData(context, index) => Padding(
//       padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//       child: Image.network(listData[index]["imageUrl"], fit: BoxFit.cover));

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
//         child: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 10.0,
//               crossAxisSpacing: 10.0,
//               childAspectRatio: 0.8,
//             ),
//             itemCount: listData.length,
//             itemBuilder: this._getData));
//   }
// }

// class HomeContent extends StatelessWidget {
//   const HomeContent({Key key}) : super(key: key);
//   // 自定义方法
//   List<Widget> _getData() {
//     // List<Widget> list = new List();
//     // for (var i = 0; i < 20; i++) {
//     //   list.add(ListTile(
//     //     title: Text('我是$i列表'),
//     //   ));
//     // }
//     // return list;

//     var tempList = listData.map((value) => Container(
//           child: Column(
//             children: <Widget>[
//               Image.network(
//                 value["imageUrl"],
//                 // width: 170,
//                 height: 170,
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(height: 10),
//               Text(
//                 value["title"],
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(height: 5),
//               Text(value["autor"]),
//             ],
//           ),
//           decoration: BoxDecoration(
//               border: Border.all(
//                   color: Color.fromRGBO(233, 233, 233, 1), width: 1)),
//         ));

//     return tempList.toList();
//   }
//   // Widget _getData(context, index) {
//   //   return ListTile(
//   //       leading: Image.network(
//   //         listData[index]["imageUrl"],
//   //         width: 60,
//   //         fit: BoxFit.cover,
//   //       ),
//   //       title: Text(listData[index]["title"]),
//   //       subtitle: Text(listData[index]["autor"]));
//   // }

//   // @override
//   // Widget build(BuildContext context) {
//   //   // return Container(
//   //   //     child: ListView(
//   //   //   padding: EdgeInsets.all(10),
//   //   //   children: this._getData(),
//   //   // ));

//   //   return ListView.builder(
//   //       itemCount: listData.length,
//   //       itemBuilder: (context, index) => this._getData(context, index));
//   // }
//   Widget _getGridData(context, index) => Container(
//         child: Column(
//           children: <Widget>[
//             Image.network(
//               listData[index]["imageUrl"],
//               // width: 170,
//               height: 170,
//               fit: BoxFit.cover,
//             ),
//             SizedBox(height: 10),
//             Text(
//               listData[index]["title"],
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 5),
//             Text(listData[index]["autor"]),
//           ],
//         ),
//         decoration: BoxDecoration(
//             border:
//                 Border.all(color: Color.fromRGBO(233, 233, 233, 1), width: 1)),
//       );

//   @override
//   Widget build(BuildContext context) {
//     // return GridView.count(
//     //     crossAxisCount: 2,
//     //     mainAxisSpacing: 10.0,
//     //     crossAxisSpacing: 10.0,
//     //     padding: EdgeInsets.all(10),
//     //     childAspectRatio: 0.8,
//     //     children: this._getData());

//     return Container(
//         padding: EdgeInsets.all(10),
//         child: GridView.builder(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 10.0,
//               crossAxisSpacing: 10.0,
//               // padding: EdgeInsets.all(10),
//               childAspectRatio: 0.8,
//             ),
//             itemCount: listData.length,
//             itemBuilder: this._getGridData));
//   }
// }
