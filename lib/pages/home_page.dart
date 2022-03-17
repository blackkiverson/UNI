import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:smifapp/widgets/post_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> mockData = [
    {
      "username": "Samuel",
      "tag": "Photography",
      "post":
          "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
      "profile_image": "img/wptwo.jpg",
      "post_image": "img/wp-six.jpg",
      "post_video": "",
    },
    {
      "username": "Isioma",
      "tag": "Music",
      "post":
          "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
      "profile_image": "img/wpone.jpg",
      "post_image": "img/wp-five.jpg",
      "post_video": "",
    },
    {
      "username": "Miracle",
      "tag": "Education",
      "post":
          "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
      "profile_image": "img/wptwo.jpg",
      "post_image": "",
      "post_video": "",
    },
  ];
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
        // physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: mockData //mockData to generate a dynamic User feed
            .map((item) => PostCard(
                  avatarImage: item["profile_image"]!,
                  username: item["username"]!,
                  postTag: item["tag"]!,
                  postText: item["post"]!,
                  postImage: item["post_image"]!,
                  postVideo: item["post_video"],
                ))
            .toList());
  }
}
