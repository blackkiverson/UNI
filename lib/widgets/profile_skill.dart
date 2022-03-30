import 'package:flutter/material.dart';

class ProfileSkill extends StatefulWidget {
  const ProfileSkill({ Key? key }) : super(key: key);

  @override
  State<ProfileSkill> createState() => _ProfileSkillState();
}

class _ProfileSkillState extends State<ProfileSkill> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 245),
              child: Text("Skills", style: TextStyle(color: Colors.white)),
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