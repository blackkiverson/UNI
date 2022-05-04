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
    return Container(
      color: Color.fromARGB(255, 12, 12, 12),
      child: SetTopic(),
    );
  }
}
