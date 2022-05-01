// ignore_for_file: non_constant_identifier_names, unused_import, avoid_web_libraries_in_flutter

import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class User {
  final String uid;
  final String name;
  final int follows;
  final int followers;
  final String email;
  final String college;
  final Image? profilepic;
  final String? postText;
  final String? postComment;
  final Image? postImage;
  // final VideoElement? postVideo;
  // final String? email;

  User(
      {this.postText,
      this.postComment,
      this.postImage,
      // this.postVideo,
      required this.uid,
      required this.name,
      required this.follows,
      required this.followers,
      required this.college,
      required this.email,
      this.profilepic});

  User.fromJson(Map<String, Object?> json)
      : this(
          uid: json['uid']! as String,
          name: json['name']! as String,
          follows: json['follows']! as int,
          followers: json['followers']! as int,
          email: json['email']! as String,
          college: json['college']! as String,
          profilepic: json['profilepic']! as Image,
          postText: json['postText']! as String,
          postComment: json['postComment']! as String,
          postImage: json['postImage']! as Image,
          // postVideo: json['PostVideo']! as VideoElement,
        );

  Map<String, Object?> toJson() {
    return {
      'name': name,
    };
  }
}

final usersQuery = FirebaseFirestore.instance
    .collection('users')
    .orderBy('name')
    .withConverter<User>(
      fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
      toFirestore: (user, _) => user.toJson(),
    );
