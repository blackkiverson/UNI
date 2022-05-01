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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Experience", style: TextStyle(color: Colors.white)),
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