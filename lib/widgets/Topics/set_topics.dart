import 'package:flutter/material.dart';

class SetTopic extends StatefulWidget {
  const SetTopic({Key? key}) : super(key: key);

  @override
  State<SetTopic> createState() => _SetTopicState();
}

class _SetTopicState extends State<SetTopic> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Align(
                widthFactor: 9,
                alignment: Alignment.topLeft,
                child: Text(
                  "Topic",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        FilterChip(
                            label: Text("Mathematics"),
                            onSelected: (bool value) {}),
                        SizedBox(width: 20),
                        FilterChip(
                            label: Text("English"),
                            onSelected: (bool value) {}),
                        SizedBox(width: 20),
                        FilterChip(
                            label: Text("Computer Science"),
                            onSelected: (bool value) {}),
                        SizedBox(width: 20),
                        FilterChip(
                            label: Text("Software Engineering"),
                            onSelected: (bool value) {}),
                        SizedBox(width: 20),
                        FilterChip(
                            label: Text("Chemistry"),
                            onSelected: (bool value) {})
                      ],
                    ),
                    Row(
                      children: [
                        FilterChip(
                            label: Text("Literature"),
                            onSelected: (bool value) {}),
                        SizedBox(width: 20),
                        FilterChip(
                            label: Text("Technology"),
                            onSelected: (bool value) {}),
                        SizedBox(width: 20),
                        FilterChip(
                            label: Text("History"),
                            onSelected: (bool value) {}),
                        SizedBox(width: 20),
                        FilterChip(
                            label: Text("Architecture"),
                            onSelected: (bool value) {}),
                        SizedBox(width: 20),
                        FilterChip(
                            label: Text("Cryptography"),
                            onSelected: (bool value) {}),
                        SizedBox(width: 20),
                        FilterChip(
                            label: Text("Geography"), onSelected: (bool value) {})
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
