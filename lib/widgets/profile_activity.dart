import 'package:flutter/material.dart';
import 'package:uni/pages/home/post_page.dart';

class ProfileActivity extends StatefulWidget {
  const ProfileActivity({Key? key}) : super(key: key);

  @override
  State<ProfileActivity> createState() => _ProfileActivityState();
}

class _ProfileActivityState extends State<ProfileActivity> {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Activity",
              style: TextStyle(color: Colors.white),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                height: 34,
                width: 100,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.blue),
                    bottom: BorderSide(color: Colors.blue),
                    left: BorderSide(color: Colors.blue),
                    right: BorderSide(color: Colors.blue),
                  ),
                  color: Color.fromARGB(68, 0, 140, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostPage(),
                      ),
                    );
                  },
                  child: Text("Start a Post"),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 450,
            child: TextButton(
                onPressed: () {}, child: Text("Show More Activities")),
          ),
        ),
        Divider(
          thickness: 0.1,
          color: Colors.white,
        )
      ],
    );
  }
}
