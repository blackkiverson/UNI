import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
          child: Container(
            height: 45,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade100
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 2, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  hintText: "Search",
                ),
              ),
            ),
          ),
        ),
        SingleChildScrollView(),
      ],
    );
  }

  color(MaterialColor blue) {}
}
