import 'package:flutter/material.dart';

class ProfileTopics extends StatefulWidget {
  const ProfileTopics({ Key? key }) : super(key: key);

  @override
  State<ProfileTopics> createState() => _ProfileTopicsState();
}

class _ProfileTopicsState extends State<ProfileTopics> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 175),
              child: Text("Favourite Topics", style: TextStyle(color: Colors.white)),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add), color: Colors.blue),
            IconButton(onPressed: () {}, icon: Icon(Icons.edit), color: Colors.blue),
          ],
        ),
        Divider(
          thickness: 0.7,
          color: Colors.white,
        )
      ],
    );
  }
}