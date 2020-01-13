import 'package:flutter/material.dart';
// import '../../formPage/index.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  TabController controller;
  var tabs = <Tab>[];
  @override
  void initState() {
    super.initState();
    tabs = <Tab>[
      Tab(
        text: '热门',
      ),
      Tab(
        text: '推荐',
      ),
      Tab(
        text: '最新',
      ),
      Tab(
        text: '关注',
      ),
      Tab(
        text: '舆情',
      ),
      Tab(
        text: '深度',
      ),
      Tab(
        text: '文化',
      ),
      Tab(
        text: '旅游',
      ),
    ];

    //initialIndex初始选中第几个
    // controller = TabController(initialIndex: 0, length: tabs.length);
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                    // controller: controller,
                    isScrollable: true,
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    tabs: tabs),
              )
            ],
          ),
        ),
        body: TabBarView(
            // controller: controller,
            children: tabs
                .map((Tab tab) => Container(
                      child: Center(
                        child: Text(tab.text),
                      ),
                    ))
                .toList()),
      ),
    );
    // Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: <Widget>[
    //     RaisedButton(
    //       child: Text('跳转到表单页面并传值'),
    //       onPressed: () {
    //         // Navigator.of(context).push(MaterialPageRoute(
    //         //     builder: (context) => FormPage(
    //         //           title: '我是跳转表单传值',
    //         //         )));

    //         Navigator.pushNamed(context, '/formPage',
    //             arguments: {'title': '我是表单传值'});
    //       },
    //       color: Theme.of(context).accentColor,
    //       textTheme: ButtonTextTheme.primary,
    //     )
    //   ],
    // );
  }
}
