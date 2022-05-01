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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Languages", style: TextStyle(color: Colors.white)),
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