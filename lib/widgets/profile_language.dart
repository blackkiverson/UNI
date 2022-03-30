import 'package:flutter/material.dart';

class ProfileLang extends StatefulWidget {
  const ProfileLang({ Key? key }) : super(key: key);

  @override
  State<ProfileLang> createState() => _ProfileLangState();
}

class _ProfileLangState extends State<ProfileLang> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 210),
              child: Text("Languages", style: TextStyle(color: Colors.white)),
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