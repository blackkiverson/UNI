// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';

class AuthUser {
  final String uid;
  final String name;
  final int age;
  // final String? email;

  AuthUser({required this.uid, required this.name, required this.age});

  AuthUser.fromJson(Map<String, Object?> json)
      : this(
          uid: json['uid']! as String,
          name: json['name']! as String,
          age: json['age']! as int,
        );

  Map<String, Object?> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

final usersQuery = FirebaseFirestore.instance
    .collection('users')
    .orderBy('name')
    .withConverter<AuthUser>(
      fromFirestore: (snapshot, _) => AuthUser.fromJson(snapshot.data()!),
      toFirestore: (user, _) => user.toJson(),
    );
