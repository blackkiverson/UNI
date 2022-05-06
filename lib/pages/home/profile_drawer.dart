import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uni/pages/authenticate/log_in.dart';
import 'package:uni/pages/home/fav_page.dart';
import 'package:uni/pages/home/profile_page.dart';
import 'package:uni/pages/home/setting_page.dart';
import 'package:uni/pages/services/auth.dart';

class SideProfile extends StatefulWidget {
  const SideProfile({Key? key}) : super(key: key);

  @override
  State<SideProfile> createState() => _SideProfileState();
}

class _SideProfileState extends State<SideProfile> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    // setState(() {
      final user = FirebaseAuth.instance.currentUser;
    // });

    return Drawer(
      backgroundColor: Color.fromARGB(255, 1, 21, 37),
      child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.only(bottom: 5),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserProfile(bio: '', location: '',),
                              ));
                        },
                        icon: const Icon(
                          Icons.person,
                          size: 30,
                        ),
                      ),
                      foregroundImage: AssetImage("img/defaultDP.jpg"),
                      // foregroundImage: const AssetImage("img/wpone.jpg"),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 55),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfile(bio: '', location: '',),
                            ));
                      },
                      child: Text(
                        user != null ? user.displayName.toString() : '',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Padding(
                //     padding: EdgeInsets.only(top: 100),
                //     child: TextButton(
                //       onPressed: () {},
                //       child: Text(
                //         "Software Engineering",
                //         style: TextStyle(
                //             color: Color.fromARGB(255, 175, 175, 175),
                //             fontWeight: FontWeight.w400),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserProfile(bio: '', location: '',),
                  ));
            },
            iconColor: Colors.white,
            // tileColor: Color.fromARGB(255, 42, 61, 77),
            leading: Icon(Icons.person_outline_rounded),
            title: Text(
              "Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavPage(),
                  ));
            },
            iconColor: Colors.white,
            // tileColor: Color.fromARGB(255, 42, 61, 77),
            leading: Icon(Icons.bookmark_border_outlined),
            title: Text(
              "Bookmarks",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 58, 58, 58),
            height: 5,
          ),
          // ListTile(
          //   onTap: () {},
          //   iconColor: Colors.white,
          //   // tileColor: Color.fromARGB(255, 42, 61, 77),
          //   leading: Icon(Icons.shield_outlined),
          //   title: Text(
          //     "Moderator Mode",
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 15,
          //         fontWeight: FontWeight.w400),
          //   ),
          // ),
          ListTile(
            iconColor: Colors.white,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppSettings(),
                  ));
            },
            leading: Icon(Icons.settings),
            title: Text(
              "Settings and Privacy",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            iconColor: Colors.white,
            onTap: () {},
            leading: Icon(Icons.help_outline_rounded),
            title: Text(
              "Help Center",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            child: ListTile(
              iconColor: Colors.white,
              onTap: () async {
                await _auth.signOut().then(
                      ((value) => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const LogIn(),
                            ),
                          )),
                    );
              },
              leading: Icon(Icons.logout_rounded),
              title: Text(
                "Log Out",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
