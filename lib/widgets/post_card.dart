import 'package:flutter/material.dart';
import 'package:uni/pages/home/profile_page.dart';
import 'like_button.dart';
import 'menu_button.dart';

// ignore: must_be_immutable
class PostCard extends StatefulWidget {
  PostCard(
      {Key? key,
      required this.avatarImage,
      required this.name,
      required this.postText,
      this.postTag,
      this.postImage,
      this.postVideo})
      : super(key: key);
  final String name;
  final String postText;
  String? avatarImage;
  String? postTag;
  String? postImage;
  String? postVideo;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 12, 12, 12),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.fromLTRB(0, 1, 0, 0.4),
      child: Column(
        children: [
          ListTile(
            //creates the top padding of every post on the home feed
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.blue,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                ),
                foregroundImage: AssetImage("img/male.jpg"),
              ),
            ),

            //creates the username using the mockData
            title: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UserProfile(),
                        ));
                  },
                  child: Text(
                    widget.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      const Size(0, 0),
                    ),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                // Text("        " + time),
              ],
            ),

            // shows the Mockdata for the Post Tag
            subtitle: Text(
              // widget.postTag,
              "Music",
              style: const TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),

            //creating a dropdownbutton with secondary options for the mode menu
            trailing: MenuButton(),
          ),

          //uses the Mockdata to generate the post text and media
          Padding(
            padding: const EdgeInsets.fromLTRB(75, 0, 10, 20),
            child: Text(widget.postText,
                style: const TextStyle(color: Colors.white)),
          ),
          widget.postImage != "" && widget.postImage != null
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(75, 0, 20, 10),
                  child: Image(
                    image: AssetImage(widget.postImage!),
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height - 550,
                    width: MediaQuery.of(context).size.width,
                  ),
                )
              : const Padding(padding: EdgeInsets.all(0)),

          //creates the social interaction buttons at the buttom of the post
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //IconButton() for the comment feature
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mode_comment_outlined),
                color: Colors.white,
              ),

              //LikeButton() widget
              LikeButton(),

              //IconButton() for the share feature
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined),
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
