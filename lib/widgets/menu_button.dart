import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({ Key? key }) : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: const EdgeInsets.only(bottom: 15),
      icon: const Icon(Icons.more_horiz_rounded),
      color: Colors.white,
      itemBuilder: (context) => <PopupMenuEntry>[
        PopupMenuItem(
          child: ListTile(
          title: Text("Report Tweet"),
          contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
          dense: true,
          trailing: Icon(Icons.flag_outlined),
          ),
        ),
        PopupMenuItem(
          child: ListTile(
          title: Text("Block User"),
                              contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
                              dense: true,
                              trailing: Icon(Icons.block),
                            ),
                          ),
                          PopupMenuItem(
                            // height: ,
                            child: ListTile(
                              title: Text("Mute User"),
                              contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
                              dense: true,
                              trailing: Icon(Icons.volume_off_outlined),
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              onTap: () {},
                              title: Text("Follow User"),
                              trailing: Icon(Icons.person_add_alt),
                              dense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
                            ),
                          ),
                        ],
                      );
  }
}