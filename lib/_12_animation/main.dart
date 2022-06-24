import 'package:flutter/material.dart';
import 'package:learn_flutter/_12_animation/pages/image_detail.dart';
import 'package:learn_flutter/_12_animation/pages/modal_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: AmiHomePage(),
    );
  }
}

class AmiHomePage extends StatelessWidget {
  static const String routeName = "/ami";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 16/9
          ),
          children: List.generate(20, (index) {
            final imageURL = "https://picsum.photos/500/500?random=$index";
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (ctx, anim1, anim2) {
                    return FadeTransition(opacity: anim1, child: HYImageDetailPage(imageURL));
                  }
                ));
              },
              child: Hero(
                tag: imageURL,
                child: Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                ),
              )
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.pool),
        onPressed: () {
          // iOS -> Modal方式
//          Navigator.of(context).push(MaterialPageRoute(
//            builder: (ctx) {
//              return HYModalPage();
//            },
//            fullscreenDialog: true
//          ));
          Navigator.of(context).push(PageRouteBuilder(
            transitionDuration: Duration(seconds: 3),
            pageBuilder: (ctx, animation1, animation2) {
              return FadeTransition(
                opacity: animation1,
                child: HYModalPage(),
              );
            }
          ));
//          Navigator.of(context).pushNamed(routeName)
        },
      ),
    );
  }
}