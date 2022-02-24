import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
        children: mockData
            .map(
              (item) => Card(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 8),
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.blue,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.person),
                          ),
                          foregroundImage: AssetImage(item["profile_image"]!),
                        ),
                      ),
                      title: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              item["username"]!,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                const Size(0, 0),
                              ),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(0)),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        item["tag"]!,
                        style: const TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                      trailing: IconButton(
                        padding: const EdgeInsets.only(bottom: 15),
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz_rounded),
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(75, 0, 10, 20),
                      child: Text(item["post"]!,
                          style: const TextStyle(color: Colors.black)),
                    ),
                    item["post_image"] != ""
                        ? Padding(
                            padding: const EdgeInsets.fromLTRB(75, 0, 20, 0),
                            child: Image(
                              image: AssetImage(item["post_image"]!),
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height - 550,
                              width: MediaQuery.of(context).size.width,
                            ),
                          )
                        : const Padding(padding: EdgeInsets.all(0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.mode_comment_outlined),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(
                              () {
                                isSelected = !isSelected;
                              },
                            );
                          },
                          icon: Icon(
                            isSelected
                                ? Icons.favorite
                                : Icons.favorite_outline_outlined,
                            color: isSelected ? Colors.red : Colors.black,
                          ),
                          // color: isSelected ? Colors.red : Colors.black
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.share_outlined),
                          // color: isSelected ? Colors.purple.shade400 : Colors.black
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
            .toList()
    );
  }
}
