// ignore_for_file: body_might_complete_normally_nullable, avoid_print, unused_local_variable, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:uni/pages/services/database.dart';
import 'wrapper.dart';

import '../../models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on firebaseUser
  AuthUser? _userFromFirebaseUser(User? user) {
    return user != null ? AuthUser(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<AuthUser?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      var result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      // print(await result.user?.getIdToken());
      User? user = result.user;
      final Cuser = FirebaseAuth.instance.currentUser;
      // return _userFromFirebaseUser(user);
      // print(user);
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  //sign up with email and password
  Future registerWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // create a new document for the user with the uid

      User? user = result.user;
      result.user?.updateDisplayName(name);

      // await DatabaseService(uid: user!.uid).updateUserData('','','');

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future getUser() async {
    var user = FirebaseAuth.instance.currentUser;
    return user;
  }
}
