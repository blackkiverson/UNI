import 'package:flutter/material.dart';
import 'package:uni/widgets/post_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String, String>> mockData = [    
    // {
    //   "username": "Miracle",
    //   "tag": "Education",
    //   "post":
    //       "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
    //   "profile_image": "img/wptwo.jpg",
    //   "post_image": "",
    //   "post_video": "",
    // },
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
                        name: item["username"]!,
                        postTag: item["tag"]!,
                        postText: item["post"]!,
                        postImage: item["post_image"]!,
                        postVideo: item["post_video"],
                      ))
                  .toList(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 57, 15),
          color: Color.fromARGB(255, 12, 12, 12),
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
                        IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.blue,),
                    hintText: "Search",
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

  color(MaterialColor blue) {}
}
