import 'package:flutter/material.dart';
import 'package:uni/widgets/dm_card.dart';

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
          "You: Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
      "profile_image": "img/wptwo.jpg",
    },
    {
      "username": "Isioma",
      "tag": "Music",
      "post":
          "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
      "profile_image": "img/wpone.jpg",
    },
    {
      "username": "Miracle",
      "tag": "Education",
      "post":
          "You: Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
      "profile_image": "img/wptwo.jpg",
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
          color: Color.fromARGB(255, 19, 19, 19),
          child: Padding(
            padding: EdgeInsets.fromLTRB(55, 8, 0, 0),
            child: Container(
              height: 40,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade800),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 2, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    hintText: "Search for a people or groups",
                    hintStyle: TextStyle(color: Colors.white)
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