import 'package:flutter/material.dart';

import 'like_button.dart';
import 'menu_button.dart';

class SearchView extends StatefulWidget {
  const SearchView({ Key? key }) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
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
    return ListView(
          scrollDirection: Axis.vertical,
          children: mockData //mockData to generate a dynamic User feed
              .map(
                (item) => Card(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 8),
                  child: Column(
                    children: [
                      ListTile(
                        //creates the top padding of every post on the home feed
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

                        //creates the username using the mockData
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

                        // shows the Mockdata for the Post Tag
                        subtitle: Text(
                          item["tag"]!,
                          style: const TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),

                        //creating a dropdownbutton with secondary options for the mode menu
                        trailing: MenuButton(),
                      ),

                      //uses the Mockdata to generate the post text and media
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
                                height:
                                    MediaQuery.of(context).size.height - 550,
                                width: MediaQuery.of(context).size.width,
                              ),
                            )
                          : const Padding(padding: EdgeInsets.all(0)),

                      //creates the social interaction buttons at the buttom of the post
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //IconButton() for the comment feature
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.mode_comment_outlined),
                          ),

                          //LikeButton() widget
                          LikeButton(),

                          //IconButton() for the share feature
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        );
  }
}