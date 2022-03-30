import 'package:flutter/material.dart';
import 'package:uni/widgets/profile_activity.dart';
import 'package:uni/widgets/profile_education.dart';
import 'package:uni/widgets/profile_experience.dart';
import 'package:uni/widgets/profile_interests.dart';
import 'package:uni/widgets/profile_language.dart';
import 'package:uni/widgets/profile_skill.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 12, 12, 12),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 210,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          opacity: 0.6,
                          image: AssetImage("img/wave_pattern.jpg"),
                          fit: BoxFit.fitWidth)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(90, 0, 0, 0),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_rounded),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blue,
                              foregroundImage: AssetImage("img/male.jpg"),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Samuel Onyebuchi-Igbokwe",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(90, 0, 0, 0),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      TextButton(onPressed: () {}, child: Text("Followers")),
                      TextButton(onPressed: () {}, child: Text("Following"))
                    ],
                  ),
                ),

                // Divider(
                //   thickness: 0.1,
                //   color: Colors.white,
                // ),

                Container(
                  height: 110,
                  color: Color.fromARGB(255, 12, 12, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20),
                      Text(
                        "Software Engineering at American University of Nigeria",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text("American University of Nigeria",
                          style: TextStyle(color: Colors.white)),
                      Text(
                        "Imo, Nigeria",
                        style: TextStyle(
                            color: Color.fromARGB(255, 150, 150, 150)),
                      )
                    ],
                  ),
                ),

                Divider(
                  thickness: 0.5,
                  height: 10,
                  color: Colors.white,
                ),

                ProfileActivity(),

                ProfileExperience(),

                ProfileEducation(),

                ProfileSkill(),

                ProfileLang(),

                ProfileTopics(), //change all tags to topics

              ],
            ),
          ),
        ],
      ),
    );
  }
}
