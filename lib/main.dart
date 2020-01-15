import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

import 'routes/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // 初始化加载的路由
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: [
      //   //此处
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   //此处
      //   const Locale('zh', 'CH'),
      //   const Locale('en', 'US'),
      // ],
    );
  }
}
