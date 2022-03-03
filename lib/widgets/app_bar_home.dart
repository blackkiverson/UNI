import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarHome extends StatefulWidget {
  const AppbarHome({ Key? key }) : super(key: key);

  @override
  _AppbarHomeState createState() => _AppbarHomeState();
}

class _AppbarHomeState extends State<AppbarHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
            foregroundImage: const AssetImage("img/wpone.jpg"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
    );
  }
}