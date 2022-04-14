import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on FirebaseUser

  // User _userFromFirebaseUser(FirebaseUser user) {
  //   return user != null ? User(uid: user.uid) : null;
  // }

  //auth change user stream
  // Stream<User> get user{
  //   return _auth.onAuthStateChanged
  //   // .map((FirebaseUser user) => _userFromFirebaseUser(user));
  //   .map(_userFromFirebaseUser);
  // }

  //sign in with email and password

  //signup with email and password

  //sign out
}