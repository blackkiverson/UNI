import 'package:flutter/material.dart';

class ProfileExperience extends StatefulWidget {
  const ProfileExperience({ Key? key }) : super(key: key);

  @override
  State<ProfileExperience> createState() => _ProfileExperienceState();
}

class _ProfileExperienceState extends State<ProfileExperience> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 210),
              child: Text("Experience", style: TextStyle(color: Colors.white)),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add), color: Colors.blue),
            IconButton(onPressed: () {}, icon: Icon(Icons.edit), color: Colors.blue),
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