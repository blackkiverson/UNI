import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uni/pages/home/main_page.dart';
import 'package:uni/pages/services/database.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  // late TextEditingController postText = TextEditingController();

  // List pages = ;

  String username = '';
  String postText = '';
  String postImage = '';
  String avatarImage = '';
  String topic = '';

  // late final TextEditingController _username;
  late final TextEditingController _postText;
  late final TextEditingController _postImage;
  late final TextEditingController _avatarImage;

  @override
  void initState() {
    username = FirebaseAuth.instance.currentUser!.displayName.toString();
    // _username = TextEditingController();
    _postText = TextEditingController();
    _postImage = TextEditingController();
    _avatarImage = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // _username.dispose();
    _postText.dispose();
    _postImage.dispose();
    _avatarImage.dispose();
    super.dispose();
  }

  // @override
  // void initState() {
  //   postText = TextEditingController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   postText = TextEditingController();
  //   postText.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color.fromARGB(255, 12, 12, 12),
          //Creating the top elements for page
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Color.fromARGB(255, 12, 12, 12),
            automaticallyImplyLeading: false,
            title: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ));
              },
              child: Text("Cancel", style: TextStyle(color: Colors.white)),
            ),
            actions: [
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Draft"),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () async {
                    final postTextContent = _postText.text.trim();
                    if (postTextContent.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        _buildSnackBar("Your post content is empty."),
                      );
                      return;
                    }

                    if (topic.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        _buildSnackBar("Please select a topic."),
                      );
                      return;
                    }

                    final user = FirebaseAuth.instance.currentUser;
                    await Databaseposts(
                            uid: user!.uid,
                            avatarImage: '',
                            postImage: '',
                            postText: '',
                            username: '')
                        .updatePostData(
                      username,
                      _postText.text,
                      _postImage.text,
                      _avatarImage.text,
                      topic,
                    );
                    Navigator.pop(context);
                  },
                  child: Text("Submit"),
                ),
              ),
              SizedBox(
                width: 25,
              ),
            ],
          ),

          bottomNavigationBar: Container(
            // constraints: BoxConstraints.expand(height: 60),
            height: 60,
            decoration: BoxDecoration(color: Color.fromARGB(255, 12, 12, 12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.image_outlined),
                  iconSize: 30,
                ),
                IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.align_horizontal_left),
                ),
                IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.insert_link_rounded),
                ),
                IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.multitrack_audio_outlined),
                ),
                IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined),
                ),
              ],
            ),
          ),

          //Creating a text field for user to input text
          body: Column(
            children: [
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
              Expanded(
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  height: MediaQuery.of(context).size.longestSide,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 12, 12, 12),
                  ),
                  child: TextField(
                    controller: _postText,
                    style: TextStyle(color: Colors.white),
                    minLines: 1,
                    maxLines: null,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        hintText: "Enter Text",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 95, 95, 95))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  SnackBar _buildSnackBar(String message) {
    return SnackBar(
      duration: Duration(milliseconds: 4000),
      content: Padding(
        padding: const EdgeInsets.all(0),
        child: Text(
          message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.red,
    );
  }
}
