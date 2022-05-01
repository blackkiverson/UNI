
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uni/pages/home/profile_edit_page.dart';
import 'package:uni/widgets/profile_activity.dart';
import 'package:uni/widgets/profile_education.dart';
import 'package:uni/widgets/profile_experience.dart';
import 'package:uni/widgets/profile_interests.dart';
import 'package:uni/widgets/profile_language.dart';
import 'package:uni/widgets/profile_skill.dart';

class UserProfile extends StatefulWidget {
  // const UserProfile({Key? key}) : super(key: key);
  const UserProfile({Key? key, 
  required this.bio,
  required this.location}) : super(key: key);
  final String bio;
  final String location;

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  // ignore: non_constant_identifier_names
  final Stream<QuerySnapshot> _ProfileStream = FirebaseFirestore.instance.collection('Profile').snapshots();

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return StreamBuilder<QuerySnapshot>(
      stream: _ProfileStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
            document.data()! as Map<String, dynamic>;
          
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
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Colors.blue,
                                    foregroundImage: AssetImage("img/male.jpg"),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    user != null ? user.displayName.toString() : '',
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProfileEdit(),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.edit,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          height: 65,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "34",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Color.fromARGB(255, 180, 180, 180)),
                                      )),
                                  Text(
                                    "Followers",
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "34",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Color.fromARGB(255, 180, 180, 180)),
                                      )),
                                  Text(
                                    "Following",
                                    style: TextStyle(color: Colors.blue),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
            
                      // Divider(
                      //   thickness: 0.1,
                      //   color: Colors.white,
                      // ),
            
                      Container(
                        height: 110,
                        color: Color.fromARGB(255, 12, 12, 12),
                        child: Row(
                          children: [
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    // "Software Engineering at American University of Nigeria",
                                    // widget.bio,
                                    data['bio'],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text("American University of Nigeria",
                                    style: TextStyle(color: Colors.white)),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    // "Imo, Nigeria",
                                    // widget.location,
                                    data['location'],
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 150, 150, 150)),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
            
                      Divider(
                        thickness: 0.1,
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
        }).toList(),);
      }
    );
  }
}
