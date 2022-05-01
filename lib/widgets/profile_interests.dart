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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Favourite Topics", style: TextStyle(color: Colors.white)),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.add), color: Colors.blue),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit), color: Colors.blue),
              ],
            ),
            
          ],
        ),
        Divider(
          thickness: 0.1,
          color: Colors.white,
        )
      ],
    );
  }
}