// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uni/pages/services/database.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  
  String bio = '';
  String location = '';

  // late final TextEditingController _username;
  late final TextEditingController _bio;
  late final TextEditingController _location;

  @override
  void initState() {
    // username = FirebaseAuth.instance.currentUser!.displayName.toString();
    // _username = TextEditingController();
    _bio = TextEditingController();
    _location = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // _username.dispose();
    _bio.dispose();
    _location.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Material(
      color: Color.fromARGB(255, 12, 12, 12),
      child: Stack(
        children: [
          // ScrollView added incase of future implementations that may require a scroll.
          SingleChildScrollView(
            child: Column(
              children: [
                // Profile Image and Container Design.
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
                        padding: const EdgeInsets.only(top: 60, right: 120),
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("img/male.jpg"),
                              foregroundColor: Colors.black,
                              child: Icon(Icons.add_a_photo_outlined,
                                  size: 50, color: Colors.white),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),

                // Profile content editting field for User Name.
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Name',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 50),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                          hintText: user!.displayName.toString(),
                          hintStyle: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 10, color: Colors.white),

                // Profile content editting field for User Bio.
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Bio',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 67),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: _bio,
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                          hintText: 'Change your user bio',
                          hintStyle: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 10, color: Colors.white),

                // Profile content editting field for User Location.
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Location',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 33),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: _location,
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                          hintText: 'Change your location',
                          hintStyle: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 10, color: Colors.white),

                // Profile content editting field for User College.
                Row(
                  children: const [
                    SizedBox(width: 20),
                    Text(
                      'College',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 41),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                          hintText: 'Change to most current college',
                          hintStyle: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 10, color: Colors.white),
                SizedBox(height: 100),

                Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),                  
                  child: TextButton(
                    onPressed: () async {
                      final user = FirebaseAuth.instance.currentUser;
                    await DatabaseProfile(uid: user!.uid, bio: '', location: '', college: '', username: '', avatarImage: '')
                        .updateProfileData(_bio.text, _location.text);
                    Navigator.pop(context);
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )

                // Profile content editting field for User Profession.
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: const [
                //     SizedBox(width: 20),
                //     Text(
                //       'Professional Profile',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //     Align(
                //       alignment: Alignment.centerRight,
                //       child: Icon(Icons.arrow_forward_ios),
                //     )
                //     // SizedBox(
                //     //   height: 50,
                //     //   width: 200,
                //     //   // child: TextField(
                //     //   //   style: TextStyle(color: Colors.blue),
                //     //   //   decoration: InputDecoration(
                //     //   //     hintText: 'Change your user bio here',
                //     //   //     hintStyle: TextStyle(color: Colors.blue),
                //     //   //   ),
                //     //   // ),
                //     // ),
                //   ],
                // ),
                // Divider(height: 10, color: Colors.white),
              ],
            ),
          )
        ],
      ),
    );
  }
}
