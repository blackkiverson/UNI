// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future updateUserData(String name, String college, String email) async {
    return await userCollection.doc(uid).set({
      'name': name,
      'college': college,
      'email': email,
    });
  }

  //get Users Stream
  Stream<QuerySnapshot> get users {
    return userCollection.snapshots();
  }
}

class Databaseposts {
  final String uid;
  final String username;
  final String postText;
  final String postImage;
  final String avatarImage;

  Databaseposts({required this.uid, required this.username, required this.postText, required this.avatarImage, required this.postImage});

  CollectionReference PostCollections =
      FirebaseFirestore.instance.collection("Posts");

  Future updatePostData(String username, String postText, String postImage,
      String avatarImage) async {
    return await PostCollections.add({
      "uid" : uid,
      "username": username,
      "avatarImage": avatarImage,
      "postText": postText,
      "postImage": postImage,
    });
  }

  //get post Stream
  Stream<QuerySnapshot> get Posts {
    return PostCollections.snapshots();
  }
}
