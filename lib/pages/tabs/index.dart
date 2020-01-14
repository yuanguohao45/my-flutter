import 'package:flutter/material.dart';
import './category/index.dart';
import './home/index.dart';
import './setbar/index.dart';
import './message/index.dart';
import './share/index.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  _TabsState(index) {
    this._currentIndex = index;
  }
  List _pageList = [HomePage(), Message(), Category(), Share(), SetBar()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('app-title')),
      floatingActionButton: Container(
          width: 80.0,
          height: 80.0,
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0), color: Colors.white),
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                this._currentIndex = 2;
              });
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 40.0,
            ),
            backgroundColor:
                this._currentIndex == 2 ? Colors.red : Colors.yellow,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          currentIndex: this._currentIndex,
          iconSize: 36.0,
          fixedColor: Colors.red,
          type: BottomNavigationBarType.fixed, // 配置多个
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), title: Text("消息")),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("分类")),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), title: Text("分享")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("设置")),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.settings), title: Text("设置")),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.settings), title: Text("设置")),
          ]),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  // child: DrawerHeader(
                  //   child: Text('你好flutter'),
                  //   decoration: BoxDecoration(
                  //       // color: Colors.yellow,
                  //       image: DecorationImage(
                  //           image: NetworkImage(
                  //               "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1962026963,30944310&fm=26&gp=0.jpg"),
                  //           fit: BoxFit.cover)),
                  // ),
                  child: UserAccountsDrawerHeader(
                    accountName: Text('yghppq'),
                    accountEmail: Text('yuanguohao45@163.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1578283095,2746545124&fm=26&gp=0.jpg"),
                    ),
                    decoration: BoxDecoration(
                        // color: Colors.yellow,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2957480931,3581665887&fm=26&gp=0.jpg"),
                            fit: BoxFit.cover)),
                    otherAccountsPictures: <Widget>[
                      Image.network(
                          "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=261825789,115966788&fm=26&gp=0.jpg"),
                      Image.network(
                          "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1474975904,1188291938&fm=26&gp=0.jpg")
                    ],
                  ),
                )
              ],
            ),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('我的空间')),
            Divider(),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text('用户中心'),
                onTap: () {
                  Navigator.of(context).pop(); // 返回上级路由--隐藏侧边栏
                  Navigator.pushNamed(context, '/userInfo');
                }),
            Divider(),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text('设置')),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('你好flutter'),
      ),
    );
  }
}
