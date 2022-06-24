import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../_11_router_manager/detail.dart';
import '../../_11_router_manager/unknown.dart';
import '../../_12_animation/main.dart';
import '../pages/home/detail_movie.dart';
import '../pages/main/main.dart';

class DouBanRouter{


  static final Map<String,WidgetBuilder> routers = {
    HYMainPage.routeName: (ctx) => HYMainPage(),
    MovieDetail.routeName: (ctx) => MovieDetail(),
    // AmiHomePage.routeName: (ctx) => AmiHomePage(),
  };

  static final String initialRoute = HYMainPage.routeName;

  static final RouteFactory generateRoute = (settings) {
    if (settings.name == HYDetailPage.routeName) {
      return MaterialPageRoute(
          builder: (ctx) {
            return HYDetailPage(settings.arguments);
          }
      );
    }
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return MaterialPageRoute(
        builder: (ctx) {
          return HYUnknownPage();
        }
    );
  };
}