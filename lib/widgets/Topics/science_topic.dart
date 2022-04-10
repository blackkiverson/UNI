import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScienceTopic extends StatefulWidget {
  const ScienceTopic({ Key? key }) : super(key: key);

  @override
  State<ScienceTopic> createState() => _ScienceTopicState();
}

class _ScienceTopicState extends State<ScienceTopic> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Text("Science", style: TextStyle(color: Colors.white),),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterChip(label: Text("Mathematics"), onSelected: (bool value) {}),
                  SizedBox(width: 10),
                  FilterChip(label: Text("Technology"), onSelected: (bool value) {}),
                  SizedBox(width: 10),
                  FilterChip(label: Text("Robotics"), onSelected: (bool value) {}),
                  SizedBox(width: 10),
                  FilterChip(label: Text("Software Engineering"), onSelected: (bool value) {}),
                  SizedBox(width: 10),
                  FilterChip(label: Text("Computer Science"), onSelected: (bool value) {}),
                  SizedBox(width: 10),
                  FilterChip(label: Text("Mechanics"), onSelected: (bool value) {}),
                  SizedBox(width: 10),
                  FilterChip(label: Text("Aviation"), onSelected: (bool value) {}),
                  SizedBox(width: 10),
                  FilterChip(label: Text("Geometrics"), onSelected: (bool value) {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}