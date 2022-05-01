// ignore_for_file: avoid_print, unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uni/pages/authenticate/welcome_page.dart';
import 'package:uni/pages/home/main_page.dart';

// ignore: use_key_in_widget_constructors
class Wrapper extends StatefulWidget {
  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {

    // FirebaseAuth.instance.signOut();
    var user = FirebaseAuth.instance.currentUser;
    setState(() {
      user = FirebaseAuth.instance.currentUser;
    });

    // print(user);

    if (user == null) {
      return WelcomePage();
    }
    else {
      return MainPage();
    }
  }
}