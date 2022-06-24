import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/router/router.dart';

import 'pages/main/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ),
      initialRoute: DouBanRouter.initialRoute,
      routes: DouBanRouter.routers,
      onGenerateRoute: DouBanRouter.generateRoute,
      onUnknownRoute: DouBanRouter.unknownRoute,
    );
  }
}







