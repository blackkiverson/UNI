import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../post_card.dart';

class SetTopic extends StatefulWidget {
  const SetTopic({Key? key}) : super(key: key);

  @override
  State<SetTopic> createState() => _SetTopicState();
}

class _SetTopicState extends State<SetTopic> {
  String topic = '';

  final Stream<QuerySnapshot> _postsStream =
      FirebaseFirestore.instance.collection('Posts').snapshots();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 49, 52, 53)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 2, 0),
                      child: TextField(
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                              onPressed: () {}, icon: Icon(Icons.search)),
                          hintText: "Search for a topic",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 180, 180, 180)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  widthFactor: 9,
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Topic",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          FilterChip(
                            label: Text("Mathematics"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "Mathematics";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "Mathematics",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "Mathematics"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          FilterChip(
                            label: Text("English"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "English";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "English",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "English"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          FilterChip(
                            label: Text("Computer Science"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "Computer Science";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "Computer Science",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "Computer Science"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          FilterChip(
                            label: Text("Software Engineering"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "Software Engineering";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "Software Engineering",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "Software Engineering"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          FilterChip(
                            label: Text("Chemistry"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "Chemistry";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "Chemistry",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "Chemistry"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          FilterChip(
                            label: Text("Literature"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "Literature";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "Literature",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "Literature"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          FilterChip(
                            label: Text("Technology"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "Technology";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "Technology",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "Technology"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          FilterChip(
                            label: Text("History"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "History";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "History",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "History"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          FilterChip(
                            label: Text("Architecture"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "Architecture";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "Architecture",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "Architecture"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          FilterChip(
                            label: Text("Cryptography"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "Cryptography";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "Cryptography",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "Cryptography"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          FilterChip(
                            label: Text("Geography"),
                            onSelected: (bool value) {
                              if (value == true) {
                                setState(() {
                                  topic = "Geography";
                                });
                              } else {
                                setState(() {
                                  topic = "";
                                });
                              }
                            },
                            selected: topic == "Geography",
                            selectedColor: Colors.blue,
                            checkmarkColor: Colors.white,
                            labelStyle: TextStyle(
                              color: topic == "Geography"
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            );
          }, childCount: 1),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return StreamBuilder<QuerySnapshot>(
              stream: topic.isNotEmpty ? FirebaseFirestore.instance
                  .collection('Posts')
                  .where("postTag", isEqualTo: topic)
                  .snapshots() : FirebaseFirestore.instance
                  .collection('Posts')
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text("Loading");
                }

                return ListView(
                  shrinkWrap: true,
                  primary: true,
                  physics: NeverScrollableScrollPhysics(),
                  children:
                      snapshot.data!.docs
                          // .where((element) => element['postTag']?.contains(topic))
                          .map((DocumentSnapshot document) {
                    Map<String, dynamic> data =
                        document.data()! as Map<String, dynamic>;
                    return PostCard(
                      avatarImage: data['avatarImage'],
                      postTag: data['postTag'] ?? "",
                      postText: data['postText'],
                      name: data['username'],
                      postImage: '',
                    );
                  }).toList(),
                );
              },
            );
          }, childCount: 1),
        ),
      ],
    );
  }
}
