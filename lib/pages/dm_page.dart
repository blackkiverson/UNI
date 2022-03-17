import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smifapp/widgets/dm_card.dart';

class DmPage extends StatefulWidget {
  const DmPage({ Key? key }) : super(key: key);

  @override
  _DmPageState createState() => _DmPageState();
}

class _DmPageState extends State<DmPage> {
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
                  .map((item) => DmCard(
                        avatarImage: item["profile_image"]!,
                        username: item["username"]!,
                        lastDm: item["post"]!,
                      ))
                  .toList(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 57, 15),
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.fromLTRB(55, 8, 0, 0),
            child: Container(
              height: 40,
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
}