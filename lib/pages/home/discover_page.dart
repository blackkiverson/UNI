import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni/widgets/Topics/science_topic.dart';

class TagDiscover extends StatefulWidget {
  const TagDiscover({Key? key}) : super(key: key);

  @override
  State<TagDiscover> createState() => _TagDiscoverState();
}

class _TagDiscoverState extends State<TagDiscover> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromARGB(255, 12, 12, 12),
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 130,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_back),
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "TOPICS TO FOLLOW",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 40,
                          width: 300,
                          alignment: Alignment.center,
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
                                hintText: "Search for a Topic",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 180, 180, 180)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: const [
                        ScienceTopic()
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
