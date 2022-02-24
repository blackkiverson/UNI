import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DmPage extends StatefulWidget {
  const DmPage({ Key? key }) : super(key: key);

  @override
  _DmPageState createState() => _DmPageState();
}

class _DmPageState extends State<DmPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Messages"))
    );
  }
}