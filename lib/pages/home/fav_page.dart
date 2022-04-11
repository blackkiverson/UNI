import 'package:flutter/material.dart';
import 'package:uni/widgets/post_card.dart';

class FavPage extends StatefulWidget {
  const FavPage({Key? key}) : super(key: key);

  @override
  _FavPageState createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 12, 12),
      ),
      body: ListView(
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
              .toList()),
    );
  }
}
