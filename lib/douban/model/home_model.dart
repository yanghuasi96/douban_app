import 'package:flutter/cupertino.dart';

int counter = 1; // 用来记录每次排名加1的常量
class MovieItem {
  int rank = 0; // 自己扩展 排名 数据是没有返回的 我们手动进行添加
  String episodes_info = "";
  double rate = 0.0;
  int cover_x = 0;
  int cover_y = 0;
  String title = "";
  String url = "";
  String cover = "";
  String id = "";
  bool playable = false;
  bool is_new = false;


  MovieItem.fromMap(Map<String, dynamic> json) {
    this.rank = counter++;
    this.episodes_info = json["episodes_info"];
    this.rate = double.parse(json["rate"].toString());
    this.cover_x = int.parse(json["cover_x"].toString());
    this.cover_y = int.parse(json["cover_y"].toString());
    this.title = json["title"];
    this.url = json["url"];
    this.cover = json["cover"];
    this.id = json["id"];
    this.playable = json["playable"];
    this.is_new = json["is_new"];

  }

  // 快捷键 command + n
  // 生成toString方法
  @override
  String toString() {
    return 'MovieItem{rank: $rank, episodes_info: $episodes_info, rate: $rate, cover_x: $cover_x, cover_y: $cover_y, title: $title, url: $url, cover: $cover, id: $id, playable: $playable, is_new: $is_new}';
  }


}