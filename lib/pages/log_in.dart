import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({ Key? key }) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("img/wp-six.jpg"),
          fit: BoxFit.cover,
          ),
        ),
      ),      
    );
  }
}