import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  // List pages = ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Creating the top elements for page
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leadingWidth: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            child: Text("Cancel", style: TextStyle(color: Colors.black)),
          ),
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
              height: 655,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: TextField(
                minLines: 1,
                maxLines: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  hintText: "Enter Text",
                ),
              ),
            ),
            Container(
              // constraints: BoxConstraints.expand(height: 60),
              height: 60,
              decoration: BoxDecoration(color: Colors.white),
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
    );
  }
}
