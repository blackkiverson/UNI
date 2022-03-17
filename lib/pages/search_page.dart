import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:smifapp/widgets/like_button.dart';
import 'package:smifapp/widgets/menu_button.dart';
import 'package:smifapp/widgets/post_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Column(
              children: mockData //mockData to generate a dynamic User feed
                  .map((item) => PostCard(
                        avatarImage: item["profile_image"]!,
                        username: item["username"]!,
                        postTag: item["tag"]!,
                        postText: item["post"]!,
                        postImage: item["post_image"]!,
                        postVideo: item["post_video"],
                      ))
                  .toList(),
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Padding(
            padding: EdgeInsets.fromLTRB(55, 10, 0, 0),
            child: Container(
              height: 45,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade100),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 2, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    hintText: "Search",
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  color(MaterialColor blue) {}
}
