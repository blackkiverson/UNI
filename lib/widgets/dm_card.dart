import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'menu_button.dart';

// ignore: must_be_immutable
class DmCard extends StatefulWidget {
  const DmCard(
      {Key? key,
      required this.avatarImage,
      required this.username,
      required this.lastDm})
      : super(key: key);
  final String avatarImage;
  final String username;
  final String lastDm;

  @override
  State<DmCard> createState() => _DmCardState();
}

class _DmCardState extends State<DmCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0.4),
      child: ListTile(
        onTap: () {},
        //creates the top padding of every post on the home feed
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
            foregroundImage: AssetImage(widget.avatarImage),
          ),
        ),

        //creates the username using the mockData
        title: Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                widget.username,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size(0, 0),
                ),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.fromLTRB(0, 0, 10, 10)),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
            // Text("        " + time),
          ],
        ),

        subtitle: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 5),
          child: Text(widget.lastDm,
              style: const TextStyle(color: Colors.black, fontSize: 12)),
        ),
        //creating a dropdownbutton with secondary options for the mode menu
        trailing: MenuButton(),
      ),
    );
  }
}
