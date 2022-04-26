// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future updateUserData(String name, String college, String email, ) async {
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

  Databaseposts({required this.uid});

  final CollectionReference PostCollections =
      FirebaseFirestore.instance.collection("Posts");

  Future updatePostData(String pUsername, String pText, AssetImage pImage) async  {
    return await PostCollections.doc(uid).set({
      "pUsername" : pUsername,
      "pText": pText,
      "pImage": pImage,
    });
  }

  //get post Stream
  Stream<QuerySnapshot> get Posts {
    return PostCollections.snapshots();
  }
}
