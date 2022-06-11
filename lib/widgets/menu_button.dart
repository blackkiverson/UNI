import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      iconSize: 20,
      padding: const EdgeInsets.only(bottom: 15),
      icon: const Icon(Icons.more_horiz_rounded, color: Colors.white,),
      color: Colors.grey.shade900,
      itemBuilder: (context) => <PopupMenuEntry>[
        PopupMenuItem(
          child: ListTile(onTap: () {},
            title: Text("Report Post", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
            contentPadding:
                EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
            dense: true,
            trailing: Icon(Icons.flag_outlined, color: Colors.white),
          ),
        ),
        PopupMenuItem(                   
          child: ListTile(onTap: () {},
            title: Text("Favourite", style: TextStyle(color: Colors.white)),
            contentPadding:
                EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
            dense: true,
            trailing: Icon(Icons.bookmark_border_outlined, color: Colors.white),
          ),
        ),
        // PopupMenuItem(          
        //   child: ListTile(onTap: () {},
        //     title: Text("Mute User"),
        //     contentPadding:
        //         EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
        //     dense: true,
        //     trailing: Icon(Icons.volume_off_outlined),
        //   ),
        // ),
        PopupMenuItem(
          child: ListTile(
            onTap: () {},
            title: Text("Follow User", style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.person_add_alt, color: Colors.white),
            dense: true,
            contentPadding:
                EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            onTap: () {},
            title: Text("Follow Tag", style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.tag, color: Colors.white),
            dense: true,
            contentPadding:
                EdgeInsets.symmetric(vertical: 0.0, horizontal: 2.0),
          ),
        ),
      ],
    );
  }
}
