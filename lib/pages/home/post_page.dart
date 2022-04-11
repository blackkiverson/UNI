import 'package:flutter/material.dart';
import 'package:uni/pages/home/main_page.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  // List pages = ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
        [Scaffold(
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
              child: Text("Cancel",
                  style: TextStyle(color: Colors.white)),
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
                  onPressed: () {},
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
