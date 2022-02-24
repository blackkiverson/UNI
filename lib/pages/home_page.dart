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
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      // physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Card(
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
                    foregroundImage: const AssetImage("img/wptwo.jpg"),
                  ),
                ),
                title: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Username",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          const Size(0, 0),
                        ),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(0)),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ],
                ),
                subtitle: const Text(
                  'Photography',
                  style: TextStyle(
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
              const Padding(
                padding: EdgeInsets.fromLTRB(75, 0, 10, 20),
                child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(75, 0, 20, 0),
                child: Image(
                  image: AssetImage('img/wpone.jpg'),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height - 550,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(
                        () {
                          if (isSelected) {
                            (Colors.blue);
                          } else {
                            (Colors.black);
                          }
                        },
                      );
                    },
                    
                    icon: const Icon(Icons.mode_comment_outlined),
                    // color: isSelected ? Colors.blue : null
                  ),
                  IconButton(
                    onPressed: () {
                      setState(
                        () {
                          if (isSelected) {
                            Colors.red;
                          } else {
                            Colors.black;
                          }
                        },
                      );
                    },
                    icon: const Icon(Icons.favorite_outline_outlined),
                    // color: isSelected ? Colors.red : Colors.black
                  ),
                  IconButton(
                    onPressed: () {
                      setState(
                        () {
                          if (isSelected) {
                            Colors.purple.shade400;
                          } else {
                            Colors.black;
                          }
                        },
                      );
                    },
                    icon: const Icon(Icons.share_outlined),
                    // color: isSelected ? Colors.purple.shade400 : Colors.black
                  ),
                ],
              ),              
            ],
          ),
        ),
        Card(
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
                    foregroundImage: const AssetImage("img/wp-three.jpg"),
                  ),
                ),
                title: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Username",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          const Size(0, 0),
                        ),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(0)),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ],
                ),
                subtitle: const Text(
                  'Photography',
                  style: TextStyle(
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
              const Padding(
                padding: EdgeInsets.fromLTRB(75, 0, 10, 20),
                child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(75, 0, 20, 30),
                child: Image(
                  image: AssetImage('img/wp-six.jpg'),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height - 550,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          ),
        ),
        Card(
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
                    foregroundImage: const AssetImage("img/wp-four.jpg"),
                  ),
                ),
                title: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Username",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          const Size(0, 0),
                        ),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(0)),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ],
                ),
                subtitle: const Text(
                  'Photography',
                  style: TextStyle(
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
              const Padding(
                padding: EdgeInsets.fromLTRB(75, 0, 10, 20),
                child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(75, 0, 20, 30),
                child: Image(
                  image: AssetImage('img/wp-two.jpg'),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height - 550,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}