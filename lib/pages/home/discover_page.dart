import 'package:flutter/material.dart';
import 'package:uni/widgets/Topics/set_topics.dart';

class TagDiscover extends StatefulWidget {
  const TagDiscover({Key? key}) : super(key: key);

  @override
  State<TagDiscover> createState() => _TagDiscoverState();
}

class _TagDiscoverState extends State<TagDiscover> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color.fromARGB(255, 12, 12, 12),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 49, 52, 53)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 2, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search)),
                        hintText: "Search for a topic",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 180, 180, 180)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              SetTopic(),
            ],
          ),
        ),
      ],
    );
  }
}
