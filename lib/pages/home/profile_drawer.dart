import 'package:flutter/material.dart';

class SideProfile extends StatefulWidget {
  const SideProfile({Key? key}) : super(key: key);

  @override
  State<SideProfile> createState() => _SideProfileState();
}

class _SideProfileState extends State<SideProfile> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 42, 61, 77),
      child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.only(bottom: 5),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 5),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person,
                          size: 30,
                        ),
                      ),
                      // foregroundImage: const AssetImage("img/wpone.jpg"),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Samuel Onyebuchi-Igbokwe",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "200 Following",
                          style: TextStyle(
                              color: Color.fromARGB(255, 190, 190, 190),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "200 Followers",
                            style: TextStyle(
                                color: Color.fromARGB(255, 190, 190, 190),
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(),
        ],
      ),
    );
  }
}
