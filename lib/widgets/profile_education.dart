import 'package:flutter/material.dart';

class ProfileEducation extends StatefulWidget {
  const ProfileEducation({ Key? key }) : super(key: key);

  @override
  State<ProfileEducation> createState() => _ProfileEducationState();
}

class _ProfileEducationState extends State<ProfileEducation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Education", style: TextStyle(color: Colors.white)),
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