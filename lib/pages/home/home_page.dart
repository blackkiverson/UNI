// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uni/pages/services/post_username.dart';
import 'package:uni/widgets/post_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Map<String, String>> mockData = [
  //   {
  //     "username": "Samuel",
  //     "tag": "Photography",
  //     "post":
  //         "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
  //     "profile_image": "img/wptwo.jpg",
  //     "post_image": "img/wp-six.jpg",
  //     "post_video": "",
  //   },
  //   {
  //     "username": "Isioma",
  //     "tag": "Music",
  //     "post":
  //         "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
  //     "profile_image": "img/wpone.jpg",
  //     "post_image": "img/wp-five.jpg",
  //     "post_video": "",
  //   },
  //   {
  //     "username": "Miracle",
  //     "tag": "Education",
  //     "post":
  //         "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
  //     "profile_image": "img/wptwo.jpg",
  //     "post_image": "",
  //     "post_video": "",
  //   },
  // ];
  bool isSelected = false;
  final Stream<QuerySnapshot> _PostsStream = FirebaseFirestore.instance.collection('Posts').snapshots();

  @override
  Widget build(BuildContext context) {

    final user = FirebaseAuth.instance.currentUser;

    return StreamBuilder<QuerySnapshot>(
      stream: _PostsStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return PostCard(
              avatarImage: data['avatarImage'],
              postTag: data['postTag'], 
              postText: data['postText'],
              name: data['username'],
              postImage: '',
              // title: Text(data['full_name']),
              // subtitle: Text(data['company']),
            );
          }).toList(),
        );
      },
    );
  }
}
