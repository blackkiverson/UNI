import 'package:flutter/material.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 12, 12),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 12, 12),
        title: Padding(
            padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: Text("Settings")),
      ),
      body: ListView(
        children: [
          SizedBox(height: 30),
          ListTile(
            onTap: () {},
            iconColor: Color.fromARGB(255, 141, 141, 141),
            leading: Icon(Icons.person_outline_outlined),
            title: Text(
              "Your Account",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "See information about your account, or learn about your account deactivation options.",
              style: TextStyle(
                  color: Color.fromARGB(255, 141, 141, 141),
                  fontWeight: FontWeight.w400),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20),
          ),

          Divider(
            height: 30,
          ),
          
          ListTile(
            onTap: () {},
            iconColor: Color.fromARGB(255, 141, 141, 141),
            leading: Icon(Icons.shield_outlined),
            title: Text(
              "Privacy and Safety",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Manage what information you see and share on Uni.",
              style: TextStyle(
                  color: Color.fromARGB(255, 141, 141, 141),
                  fontWeight: FontWeight.w400),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20),
          ),
          Divider(
            height: 30,
          ),

          ListTile(
            onTap: () {},
            iconColor: Color.fromARGB(255, 141, 141, 141),
            leading: Icon(Icons.notifications_none_rounded),
            title: Text(
              "Notifications",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Select the kinds of  notifications you get about your activities, and interests.",
              style: TextStyle(
                  color: Color.fromARGB(255, 141, 141, 141),
                  fontWeight: FontWeight.w400),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20),
          ),
          
          Divider(
            height: 30,
          ),

          ListTile(
            onTap: () {},
            iconColor: Color.fromARGB(255, 141, 141, 141),
            leading: Icon(Icons.accessibility_new_rounded),
            title: Text(
              "Accessibility, display, and languages",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Manage how Uni content is displayed to you.",
              style: TextStyle(
                  color: Color.fromARGB(255, 141, 141, 141),
                  fontWeight: FontWeight.w400),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20),
          ),
          
          Divider(
            height: 30,
          ),

          ListTile(
            onTap: () {},
            iconColor: Color.fromARGB(255, 141, 141, 141),
            leading: Icon(Icons.add_circle_outline_rounded),
            title: Text(
              "Additional ",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Check out other places for helpful information to learn more about Uni products and services.",
              style: TextStyle(
                  color: Color.fromARGB(255, 141, 141, 141),
                  fontWeight: FontWeight.w400),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20),
          ),
          
          Divider(
            height: 20,
          ),

        ],
      ),
    );
  }
}
