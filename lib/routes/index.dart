import 'package:flutter/material.dart';

// 首页模块
import '../pages/tabs/index.dart';
// 示例模块
import '../pages/formPage/index.dart';
import '../pages/searchPage/index.dart';
// 商品模块
import '../pages/product/list/index.dart';
import '../pages/product/info/index.dart';
// 用户登录注册模块
import '../pages/users/login/index.dart';
import '../pages/users/registerFirst/index.dart';
import '../pages/users/registerSecond/index.dart';
import '../pages/users/registerThird/index.dart';

import '../pages/users/index.dart'; // 用户中心
// 自定义顶部tab
import '../pages/appBarDemo/index.dart';
import '../pages/tabBarControllar/index.dart';
// 按钮演示
import '../pages/button/index.dart';

import '../pages/formPage/index.dart';
import '../pages/checkBoxPage/index.dart';
import '../pages/radioPage/index.dart';
import '../pages/switchPage/index.dart';

import '../pages/studentSys/index.dart';

// 配置路由
final routes = {
  '/': (context, {arguments}) => Tabs(),
  '/productList': (context, {arguments}) => ProductList(arguments: arguments),
  '/productInfo': (context, {arguments}) => ProductInfo(arguments: arguments),
  // '/formPage': (context, {arguments}) => FormPage(arguments: arguments),
  '/formPage': (context, {arguments}) => FormPage(),
  '/checkBoxPage': (context, {arguments}) => CheckBoxPage(),
  '/radioPage': (context, {arguments}) => RadioPage(),
  '/switchPage': (context, {arguments}) => SwitchPage(),

  '/searchPage': (context, {arguments}) => SearchPage(arguments: arguments),
  '/userInfo': (context, {arguments}) => UserInfo(),
  '/login': (context, {arguments}) => Login(),
  '/registerFirst': (context, {arguments}) => RegisterFirst(),
  '/registerSecond': (context, {arguments}) => RegisterSecond(),
  '/registerThird': (context, {arguments}) => RegisterThird(),
  '/appBarDemo': (context, {arguments}) => AppBarDemo(),
  '/tabBarControllar': (context, {arguments}) => TabBarControllar(),
  '/buttonPage': (context, {arguments}) => ButtonPage(),

  '/studentSys': (context, {arguments}) => StudentSystem(),
};

// 路由传参
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
