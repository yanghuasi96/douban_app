import 'package:flutter/material.dart';
import 'package:learn_flutter/douban/model/home_model.dart';
import 'config.dart';
import 'http_request.dart';


class HomeRequest {
  static Future<List<MovieItem>> requestMovieList(int start) async {
    // 1.构建URL
    final movieURL = "/movie/top250?start=$start&count=${HomeConfig.movieCount}";
    print("网址：$movieURL");
    // 2.发送网络请求获取结果
    // final result = await HttpRequest.request(movieURL);
    dynamic res = await {
      "subjects": [
        {
          "episodes_info": "",
          "rate": "6.3",
          "cover_x": 1080,
          "title": "爱在托斯卡纳",
          "url": "https://movie.douban.com/subject/35342564/",
          "playable": false,
          "cover":
          "https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2873227855.webp",
          "id": "35342564",
          "cover_y": 1350,
          "is_new": true
        },
        {
          "episodes_info": "",
          "rate": "8.3",
          "cover_x": 3500,
          "title": "唐顿庄园2",
          "url": "https://movie.douban.com/subject/35008440/",
          "playable": false,
          "cover":
          "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2871809800.webp",
          "id": "35008440",
          "cover_y": 5185,
          "is_new": false
        },
        {
          "episodes_info": "",
          "rate": "7.7",
          "cover_x": 8699,
          "title": "瞬息全宇宙",
          "url": "https://movie.douban.com/subject/30314848/",
          "playable": false,
          "cover":
          "https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2869765076.webp",
          "id": "30314848",
          "cover_y": 12599,
          "is_new": false
        },
        {
          "episodes_info": "",
          "rate": "7.4",
          "cover_x": 1500,
          "title": "必胜球探",
          "url": "https://movie.douban.com/subject/35073914/",
          "playable": false,
          "cover":
          "https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2872856462.webp",
          "id": "35073914",
          "cover_y": 2222,
          "is_new": true
        },
        {
          "episodes_info": "",
          "rate": "7.7",
          "cover_x": 1000,
          "title": "小说家的电影",
          "url": "https://movie.douban.com/subject/35743103/",
          "playable": false,
          "cover":
          "https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2870976733.webp",
          "id": "35743103",
          "cover_y": 1425,
          "is_new": false
        },
        {
          "episodes_info": "",
          "rate": "7.3",
          "cover_x": 1080,
          "title": "坏蛋联盟",
          "url": "https://movie.douban.com/subject/30165311/",
          "playable": false,
          "cover":
          "https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2870318303.webp",
          "id": "30165311",
          "cover_y": 1600,
          "is_new": false
        },
        {
          "episodes_info": "",
          "rate": "7.2",
          "cover_x": 2000,
          "title": "行骗天下JP：英雄篇",
          "url": "https://movie.douban.com/subject/35142915/",
          "playable": false,
          "cover":
          "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2873795999.webp",
          "id": "35142915",
          "cover_y": 3000,
          "is_new": false
        },
        {
          "episodes_info": "",
          "rate": "6.5",
          "cover_x": 2200,
          "title": "山村狐妻",
          "url": "https://movie.douban.com/subject/35914264/",
          "playable": false,
          "cover":
          "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2874192380.webp",
          "id": "35914264",
          "cover_y": 3911,
          "is_new": false
        },
        {
          "episodes_info": "",
          "rate": "8.2",
          "cover_x": 1900,
          "title": "万湖会议",
          "url": "https://movie.douban.com/subject/35769174/",
          "playable": false,
          "cover":
          "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2873273219.webp",
          "id": "35769174",
          "cover_y": 2690,
          "is_new": false
        },
        {
          "episodes_info": "",
          "rate": "7.7",
          "cover_x": 1000,
          "title": "甘古拜·卡蒂娅瓦迪",
          "url": "https://movie.douban.com/subject/34966922/",
          "playable": false,
          "cover":
          "https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2868031426.webp",
          "id": "34966922",
          "cover_y": 1500,
          "is_new": false
        },
        {
          "episodes_info": "",
          "rate": "5.9",
          "cover_x": 3500,
          "title": "神奇动物：邓布利多之谜",
          "url": "https://movie.douban.com/subject/26147418/",
          "playable": false,
          "cover":
          "https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2871106106.webp",
          "id": "26147418",
          "cover_y": 5184,
          "is_new": false
        },
        {
          "episodes_info": "",
          "rate": "6.2",
          "cover_x": 3102,
          "title": "哆啦A梦：大雄的宇宙小战争2021",
          "url": "https://movie.douban.com/subject/35253900/",
          "playable": false,
          "cover":
          "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2873563629.webp",
          "id": "35253900",
          "cover_y": 4381,
          "is_new": false
        }
      ]
    };
    final subjects = res["subjects"];

    // 3.将Map转成Model
    List<MovieItem> movies = [];
    for (var sub in subjects) {
      movies.add(MovieItem.fromMap(sub));
    }

    return movies;
  }
}