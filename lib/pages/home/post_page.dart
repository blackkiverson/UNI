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

  late final TextEditingController _username;
  late final TextEditingController _postText;
  late final TextEditingController _postImage;
  late final TextEditingController _avatarImage;

  @override
  void initState() {
    _username = TextEditingController();
    _postText = TextEditingController();
    _postImage = TextEditingController();
    _avatarImage = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
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
                    final user = FirebaseAuth.instance.currentUser;
                    await Databaseposts(uid: user!.uid, avatarImage: '', postImage: '', postText: '', username: '')
                        .updatePostData(_username.text, _postText.text, _postImage.text, _avatarImage.text);
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

          //Creating a text field for user to input text
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
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
                Container(
                  // constraints: BoxConstraints.expand(height: 60),
                  height: 60,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 12, 12, 12)),
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
